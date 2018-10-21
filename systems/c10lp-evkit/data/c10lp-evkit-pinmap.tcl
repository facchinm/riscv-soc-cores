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

#============================================================
# SDRAM
#============================================================
set_location_assignment PIN_E10 -to DRAM_ADDR[11]
set_location_assignment PIN_B13 -to DRAM_ADDR[10]
set_location_assignment PIN_C9  -to DRAM_ADDR[9]
set_location_assignment PIN_E11 -to DRAM_ADDR[8]
set_location_assignment PIN_D12 -to DRAM_ADDR[7]
set_location_assignment PIN_D11 -to DRAM_ADDR[6]
set_location_assignment PIN_C14 -to DRAM_ADDR[5]
set_location_assignment PIN_D14 -to DRAM_ADDR[4]
set_location_assignment PIN_A14 -to DRAM_ADDR[3]
set_location_assignment PIN_A15 -to DRAM_ADDR[2]
set_location_assignment PIN_B12 -to DRAM_ADDR[1]
set_location_assignment PIN_A12 -to DRAM_ADDR[0]
set_location_assignment PIN_B10 -to DRAM_BA[1]
set_location_assignment PIN_A10 -to DRAM_BA[0]
set_location_assignment PIN_B7  -to DRAM_CAS_N
set_location_assignment PIN_E9  -to DRAM_CKE
set_location_assignment PIN_A11 -to DRAM_CS_N
set_location_assignment PIN_B6  -to DRAM_DQ[15]
set_location_assignment PIN_D6  -to DRAM_DQ[14]
set_location_assignment PIN_D8  -to DRAM_DQ[13]
set_location_assignment PIN_E6  -to DRAM_DQ[12]
set_location_assignment PIN_E8  -to DRAM_DQ[11]
set_location_assignment PIN_E7  -to DRAM_DQ[10]
set_location_assignment PIN_C8  -to DRAM_DQ[9]
set_location_assignment PIN_F8  -to DRAM_DQ[8]
set_location_assignment PIN_A6  -to DRAM_DQ[7]
set_location_assignment PIN_B5  -to DRAM_DQ[6]
set_location_assignment PIN_A5  -to DRAM_DQ[5]
set_location_assignment PIN_A4  -to DRAM_DQ[4]
set_location_assignment PIN_A3  -to DRAM_DQ[3]
set_location_assignment PIN_B3  -to DRAM_DQ[2]
set_location_assignment PIN_B4  -to DRAM_DQ[1]
set_location_assignment PIN_A2  -to DRAM_DQ[0]
set_location_assignment PIN_F9  -to DRAM_DQM[1]
set_location_assignment PIN_A7  -to DRAM_DQM[0]
set_location_assignment PIN_D9  -to DRAM_RAS_N
set_location_assignment PIN_B14 -to DRAM_CLK
set_location_assignment PIN_B11 -to DRAM_WE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CAS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CKE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQM[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQM[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_RAS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_WE_N
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM*
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[11]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[10]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[9]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[8]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[7]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[6]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[5]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[4]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[3]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[2]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[1]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_ADDR[0]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_BA[1]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_BA[0]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_DQM[1]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_DQM[0]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_RAS_N
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_CAS_N
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_WE_N
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_CS_N
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to DRAM_CKE
