/* dual-relay-v2-bricklet
 * Copyright (C) 2017 Olaf Lüke <olaf@tinkerforge.com>
 *
 * communication.c: TFP protocol message handling
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "communication.h"
#include "relay.h"

#include "bricklib2/utility/communication_callback.h"
#include "bricklib2/hal/system_timer/system_timer.h"
#include "bricklib2/protocols/tfp/tfp.h"

extern Relay relay;

BootloaderHandleMessageResponse handle_message(const void *message, void *response) {
	switch(tfp_get_fid_from_message(message)) {
		case FID_SET_STATE: return set_state(message);
		case FID_GET_STATE: return get_state(message, response);
		case FID_SET_MONOFLOP: return set_monoflop(message);
		case FID_GET_MONOFLOP: return get_monoflop(message, response);
		case FID_SET_SELECTED_STATE: return set_selected_state(message);
		default: return HANDLE_MESSAGE_RESPONSE_NOT_SUPPORTED;
	}
}


BootloaderHandleMessageResponse set_state(const SetState *data) {
	relay_set_state(1, data->relay1);
	relay_set_state(2, data->relay2);

	relay.monoflop_time[0] = 0;
	relay.monoflop_time[1] = 0;
	relay.monoflop_running[0] = false;
	relay.monoflop_running[1] = false;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_state(const GetState *data, GetState_Response *response) {
	response->header.length = sizeof(GetState_Response);
	response->relay1        = relay_get_state(1);
	response->relay2        = relay_get_state(2);

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

BootloaderHandleMessageResponse set_monoflop(const SetMonoflop *data) {
	if((data->relay < 1) || (data->relay > 2)) {
		return HANDLE_MESSAGE_RESPONSE_INVALID_PARAMETER;
	}

	const uint8_t i = data->relay - 1;

	relay.monoflop_start[i]   = system_timer_get_ms();
	relay.monoflop_time[i]    = data->time;
	relay.monoflop_running[i] = true;
	relay_set_state(data->relay, data->state);

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}

BootloaderHandleMessageResponse get_monoflop(const GetMonoflop *data, GetMonoflop_Response *response) {
	if((data->relay < 1) || (data->relay > 2)) {
		return HANDLE_MESSAGE_RESPONSE_INVALID_PARAMETER;
	}

	const uint8_t i = data->relay - 1;

	response->header.length  = sizeof(GetMonoflop_Response);
	response->state          = relay_get_state(data->relay);
	response->time           = relay.monoflop_time[i];
	if(relay.monoflop_running[i]) {
		response->time_remaining = relay.monoflop_time[i] - (uint32_t)(system_timer_get_ms() - relay.monoflop_start[i]);
	} else {
		response->time_remaining = 0;
	}

	// Sanity check time remaining
	if(response->time_remaining > response->time) {
		response->time_remaining = 0;
	}

	return HANDLE_MESSAGE_RESPONSE_NEW_MESSAGE;
}

BootloaderHandleMessageResponse set_selected_state(const SetSelectedState *data) {
	if((data->relay < 1) || (data->relay > 2)) {
		return HANDLE_MESSAGE_RESPONSE_INVALID_PARAMETER;
	}

	const uint8_t i = data->relay - 1;

	relay_set_state(data->relay, data->state);

	relay.monoflop_time[i] = 0;
	relay.monoflop_running[i] = false;

	return HANDLE_MESSAGE_RESPONSE_EMPTY;
}




bool handle_monoflop_done_callback(void) {
	static bool is_buffered = false;
	static MonoflopDone_Callback cb;

	if(!is_buffered) {
		if(relay.monoflop_callback[0]) {
			tfp_make_default_header(&cb.header, bootloader_get_uid(), sizeof(MonoflopDone_Callback), FID_CALLBACK_MONOFLOP_DONE);
			cb.relay = 1;
			cb.state = relay_get_state(1);
			relay.monoflop_callback[0] = false;
		} else if(relay.monoflop_callback[1]) {
			tfp_make_default_header(&cb.header, bootloader_get_uid(), sizeof(MonoflopDone_Callback), FID_CALLBACK_MONOFLOP_DONE);
			cb.relay = 2;
			cb.state = relay_get_state(2);
			relay.monoflop_callback[1] = false;
		} else {
			return false;
		}
	}

	if(bootloader_spitfp_is_send_possible(&bootloader_status.st)) {
		bootloader_spitfp_send_ack_and_message(&bootloader_status, (uint8_t*)&cb, sizeof(MonoflopDone_Callback));
		is_buffered = false;

		return true;
	} else {
		is_buffered = true;
	}

	return false;
}

void communication_tick(void) {
	communication_callback_tick();
}

void communication_init(void) {
	communication_callback_init();
}
