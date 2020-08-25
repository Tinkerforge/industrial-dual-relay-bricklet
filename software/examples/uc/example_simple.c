#include "bindings/hal_common.h"
#include "bindings/bricklet_industrial_dual_relay.h"

#define UID "XYZ" // Change XYZ to the UID of your Industrial Dual Relay Bricklet

void check(int rc, const char* msg);

TF_IndustrialDualRelay idr;

void example_setup(TF_HalContext *hal) {
	// Create device object
	check(tf_industrial_dual_relay_create(&idr, UID, hal), "create device object");


	// Turn relays alternating on/off 10 times with 1 second delay
	int i;
	for(i = 0; i < 5; ++i) {
		tf_hal_sleep_us(hal, 1000 * 1000);
		check(tf_industrial_dual_relay_set_value(&idr, true, false), "call set_value");
		tf_hal_sleep_us(hal, 1000 * 1000);
		check(tf_industrial_dual_relay_set_value(&idr, false, true), "call set_value");
	}

}

void example_loop(TF_HalContext *hal) {
	// Poll for callbacks
	tf_hal_callback_tick(hal, 0);
}
