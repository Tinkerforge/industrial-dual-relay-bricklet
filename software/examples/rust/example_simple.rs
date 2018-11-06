use std::{error::Error, io, thread, time::Duration};
use tinkerforge::{industrial_dual_relay_bricklet::*, ipconnection::IpConnection};

const HOST: &str = "127.0.0.1";
const PORT: u16 = 4223;
const UID: &str = "XYZ"; // Change XYZ to the UID of your Industrial Dual Relay Bricklet

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection
    let industrial_dual_relay_bricklet = IndustrialDualRelayBricklet::new(UID, &ipcon); // Create device object

    ipcon.connect(HOST, PORT).recv()??; // Connect to brickd
                                        // Don't use device before ipcon is connected

    // Turn relays alternating on/off 10 times with 1 second delay
    for i in 0..5 {
        thread::sleep(Duration::from_millis(1000));
        industrial_dual_relay_bricklet.set_value(true, false);
        thread::sleep(Duration::from_millis(1000));
        industrial_dual_relay_bricklet.set_value(false, true);
    }

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;
    ipcon.disconnect();
    Ok(())
}
