<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletDualRelayV2.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletDualRelayV2;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change XYZ to the UID of your Dual Relay Bricklet 2.0

$ipcon = new IPConnection(); // Create IP connection
$dr = new BrickletDualRelayV2(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Turn relays alternating on/off 10 times with 1 second delay
for($i = 0; $i < 5; $i++) {
    sleep(1);
    $dr->setState(TRUE, FALSE);
    sleep(1);
    $dr->setState(FALSE, TRUE);
}

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>
