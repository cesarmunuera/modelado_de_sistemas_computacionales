# CLK 
set_property PACKAGE_PIN W5 [get_ports {CLK}]
	set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]

#RST
set_property PACKAGE_PIN W19 [get_ports {RST}]
	set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

	#led BUSY
set_property PACKAGE_PIN U16 [get_ports BUSY]						
	set_property IOSTANDARD LVCMOS33 [get_ports {BUSY}]
	
# OLED (JC)
set_property PACKAGE_PIN K17 [get_ports {CS}];             # JC1					
	set_property IOSTANDARD LVCMOS33 [get_ports {CS}]
set_property PACKAGE_PIN M18 [get_ports {SDIN}];	          # JC2				
	set_property IOSTANDARD LVCMOS33 [get_ports {SDIN}]
set_property PACKAGE_PIN P18 [get_ports {SCLK}];	          # JC4				
	set_property IOSTANDARD LVCMOS33 [get_ports {SCLK}]
set_property PACKAGE_PIN L17 [get_ports {D_C}];	          #JC7				
	set_property IOSTANDARD LVCMOS33 [get_ports {D_C}]
set_property PACKAGE_PIN M19 [get_ports {RES}];            #JC8					
	set_property IOSTANDARD LVCMOS33 [get_ports {RES}]
set_property PACKAGE_PIN P17 [get_ports {VBAT}];           #JC9					
	set_property IOSTANDARD LVCMOS33 [get_ports {VBAT}]
set_property PACKAGE_PIN R18 [get_ports {VDD}];            #JC10					
	set_property IOSTANDARD LVCMOS33 [get_ports {VDD}]


#pulsador DATA_OK
set_property PACKAGE_PIN T17 [get_ports DATA_OK]						
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA_OK}]
	
	
# switches DATA 
set_property PACKAGE_PIN V17 [get_ports {DATA[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[0]}]
set_property PACKAGE_PIN V16 [get_ports {DATA[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[1]}]
set_property PACKAGE_PIN W16 [get_ports {DATA[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[2]}]
set_property PACKAGE_PIN W17 [get_ports {DATA[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[3]}]
set_property PACKAGE_PIN W15 [get_ports {DATA[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[4]}]
set_property PACKAGE_PIN V15 [get_ports {DATA[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[5]}]
set_property PACKAGE_PIN W14 [get_ports {DATA[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[6]}]
set_property PACKAGE_PIN W13 [get_ports {DATA[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {DATA[7]}]


	
        
      