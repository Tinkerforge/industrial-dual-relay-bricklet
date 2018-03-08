/* industrial-dual-relay-bricklet
 * Copyright (C) 2017-2018 Olaf Lüke <olaf@tinkerforge.com>
 *
 * communication.h: TFP protocol message handling
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

#ifndef COMMUNICATION_H
#define COMMUNICATION_H

#include <stdint.h>
#include <stdbool.h>

#include "bricklib2/protocols/tfp/tfp.h"
#include "bricklib2/bootloader/bootloader.h"

// Default functions
BootloaderHandleMessageResponse handle_message(const void *data, void *response);
void communication_tick(void);
void communication_init(void);

// Constants


// Function and callback IDs and structs
#define FID_SET_STATE 1
#define FID_GET_STATE 2
#define FID_SET_MONOFLOP 3
#define FID_GET_MONOFLOP 4
#define FID_SET_SELECTED_STATE 6

#define FID_CALLBACK_MONOFLOP_DONE 5

typedef struct {
	TFPMessageHeader header;
	bool relay1;
	bool relay2;
} __attribute__((__packed__)) SetState;

typedef struct {
	TFPMessageHeader header;
} __attribute__((__packed__)) GetState;

typedef struct {
	TFPMessageHeader header;
	bool relay1;
	bool relay2;
} __attribute__((__packed__)) GetState_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t relay;
	bool state;
	uint32_t time;
} __attribute__((__packed__)) SetMonoflop;

typedef struct {
	TFPMessageHeader header;
	uint8_t relay;
} __attribute__((__packed__)) GetMonoflop;

typedef struct {
	TFPMessageHeader header;
	bool state;
	uint32_t time;
	uint32_t time_remaining;
} __attribute__((__packed__)) GetMonoflop_Response;

typedef struct {
	TFPMessageHeader header;
	uint8_t relay;
	bool state;
} __attribute__((__packed__)) MonoflopDone_Callback;

typedef struct {
	TFPMessageHeader header;
	uint8_t relay;
	bool state;
} __attribute__((__packed__)) SetSelectedState;


// Function prototypes
BootloaderHandleMessageResponse set_state(const SetState *data);
BootloaderHandleMessageResponse get_state(const GetState *data, GetState_Response *response);
BootloaderHandleMessageResponse set_monoflop(const SetMonoflop *data);
BootloaderHandleMessageResponse get_monoflop(const GetMonoflop *data, GetMonoflop_Response *response);
BootloaderHandleMessageResponse set_selected_state(const SetSelectedState *data);

// Callbacks
bool handle_monoflop_done_callback(void);

#define COMMUNICATION_CALLBACK_TICK_WAIT_MS 1
#define COMMUNICATION_CALLBACK_HANDLER_NUM 1
#define COMMUNICATION_CALLBACK_LIST_INIT \
	handle_monoflop_done_callback, \


#endif
