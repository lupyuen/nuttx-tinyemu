// Blink the NuttX LED 20 times
// qjs --std /system/bin/blink.js

// Define the NuttX LED Command
const ULEDIOC_SETALL = 0x1d03;

// Open the NuttX LED Device (write-only)
const fd = os.open("/dev/userleds", os.O_WRONLY);

// Loop 20 times...
for (let i = 0; i < 20; i++) {

    // Flip the LED On: GPIO 29 turns Green
    os.ioctl(fd, ULEDIOC_SETALL, 1);

    // Wait 1 second
    os.sleep(1000);

    // Flip the LED Off: GPIO 29 goes back to normal
    os.ioctl(fd, ULEDIOC_SETALL, 0);    

    // Wait 1 second
    os.sleep(1000);
}

// Close the LED Device
os.close(fd)
