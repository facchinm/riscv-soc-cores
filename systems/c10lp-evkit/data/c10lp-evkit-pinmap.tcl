set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"

set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS_INPUT_TRI_STATED"
set_global_assignment -name RESERVE_ALL_UNUSED_PINS_NO_OUTPUT_GND "AS INPUT TRI-STATED"
set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"

set_global_assignment -name RESERVE_ASDO_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

set_location_assignment PIN_E2 -to CLK50MHZ
set_location_assignment PIN_L16 -to USER_PB
set_location_assignment PIN_G15 -to USER_LED[1]
set_location_assignment PIN_G16 -to USER_LED[0]

set_location_assignment PIN_A13 -to ARDUINO_IO0
set_location_assignment PIN_C11 -to ARDUINO_IO1
