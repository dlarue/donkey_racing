
Tools to help train the donkey car models.

`ip_beacon`: a program that broadcasts the presence of a node on a network for easy finding.
It can also browse for said nodes on the local network.

`teensy_rc_control`: a sketch for the Arduino IDE with the Teensyduino package installed, to 
control a gas-and-steering robot based on received RC commands and communication with a USB 
host (such as a Raspberry Pi or NVIDIA Jetson.)

`mktraining`: generates a synthetic set of images similar to what a rpi camera might capture.
horizontal FOV 60 degrees; resolution 320x240; random confetti on the floor for each image.
Libraries needed to build: GLFW and GLEW.

`blur`: blur a PNG image based on a mask given in another PNG image.

`teensy_32_carrier`: KiCad design files for the servo and receiver I/O board for the Teensy 3.2
microcontroller. Known flaws in revision 1.0:
  - Doesn't connect to Raspbery Pi "hat" port
  - Doesn't have enough I/Os to read BLDC motor sensors

All of these tools also want "stb" to be a checkout of github.com/nothings/stb as a peer 
to these directories.
