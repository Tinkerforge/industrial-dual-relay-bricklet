// This example is not self-contained.
// It requires usage of the example driver specific to your platform.
// See the HAL documentation.

#include "src/bindings/hal_common.h"
#include "src/bindings/bricklet_industrial_dual_relay.h"

void check(int rc, const char *msg);
void example_setup(TF_HAL *hal);
void example_loop(TF_HAL *hal);

static TF_IndustrialDualRelay idr;

void example_setup(TF_HAL *hal) {
	// Create device object
	check(tf_industrial_dual_relay_create(&idr, NULL, hal), "create device object");

	// Turn relays alternating on/off 10 times with 1 second delay
	int i;
	for (i = 0; i < 5; ++i) {
		tf_hal_sleep_us(hal, 1000 * 1000);
		check(tf_industrial_dual_relay_set_value(&idr, true, false), "call set_value");
		tf_hal_sleep_us(hal, 1000 * 1000);
		check(tf_industrial_dual_relay_set_value(&idr, false, true), "call set_value");
	}
}

void example_loop(TF_HAL *hal) {
	// Poll for callbacks
	tf_hal_callback_tick(hal, 0);
}
