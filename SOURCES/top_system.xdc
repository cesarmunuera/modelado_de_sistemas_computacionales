# CLK 
set_property PACKAGE_PIN W5 [get_ports {CLK}]
	set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]

#RST
set_property PACKAGE_PIN W19 [get_ports {RST}]
	set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

#led BUSY
set_property PACKAGE_PIN L1 [get_ports BUSY]						
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

##7 SEG_AGment display
set_property PACKAGE_PIN W7 [get_ports {SEG_AG[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[0]}]
set_property PACKAGE_PIN W6 [get_ports {SEG_AG[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[1]}]
set_property PACKAGE_PIN U8 [get_ports {SEG_AG[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[2]}]
set_property PACKAGE_PIN V8 [get_ports {SEG_AG[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[3]}]
set_property PACKAGE_PIN U5 [get_ports {SEG_AG[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[4]}]
set_property PACKAGE_PIN V5 [get_ports {SEG_AG[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[5]}]
set_property PACKAGE_PIN U7 [get_ports {SEG_AG[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {SEG_AG[6]}]

set_property PACKAGE_PIN U2 [get_ports {AND_30[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AND_30[0]}]
set_property PACKAGE_PIN U4 [get_ports {AND_30[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AND_30[1]}]
set_property PACKAGE_PIN V4 [get_ports {AND_30[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AND_30[2]}]
set_property PACKAGE_PIN W4 [get_ports {AND_30[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {AND_30[3]}]

set_property PACKAGE_PIN V7 [get_ports DP]							
	set_property IOSTANDARD LVCMOS33 [get_ports DP]

#TECLADO (JB)
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {COL[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {COL[3]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {COL[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {COL[2]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {COL[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {COL[1]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {COL[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {COL[0]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {ROW[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ROW[3]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {ROW[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ROW[2]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {ROW[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ROW[1]}]
##Sch name = JB10
set_property PACKAGE_PIN C16 [get_ports {ROW[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ROW[0]}]

 
	
        
      