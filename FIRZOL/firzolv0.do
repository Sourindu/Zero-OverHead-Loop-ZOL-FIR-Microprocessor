set project_name "firzol" 
vlib ieee_proposed
vcom -work ieee_proposed fixed_float_types_c.vhdl
vcom -work ieee_proposed fixed_pkg.vhd
vcom -work ieee_proposed float_pkg_c.vhdl
vlib work
vcom $project_name.vhd
vsim work.${project_name}(fpga)
#do {tb_ini.do} $1

###
########## Compile project
#set project_name "firzol" 
#puts "** Timing Simulation"
#vlib work
#vcom $project_name.vhd
#vsim work.${project_name}(fpga)

###
########## Add I/O signals to wave window
add wave -divider  "Simulation by Sourindu Chaterjee"
add wave clk reset Load_x Load_c
add wave -divider  "Input Data:" 
radix -decimal
#radix -hex
add wave  L_in x_in
add wave -divider  "Outputs"
#radix -decimal
add wave -radix decimal c_in c_ar d_out
#add wave count bount
#add wave -divider -height 160 {Analog y_out:}
#add wave -color Red -format Analog-Step -radix signed -scale 0.25 y_out
add wave -color Blue y_out
add wave x_ar2
add wave state

######### Add stimuli data
force clk 0 0ns, 1 50ns -r 100ns
force reset 1 0ns, 0 50ns
#force Load_x 0 0ns, 1 50ns, 0 350ns , 0 450ns
force Load_x 0 0ns, 1 50ns, 0 350ns, 1 460ns, 1 760ns, 1 770ns, 0 860ns
force Load_c 0 0ns, 1 50ns, 0 300ns
#radix -hex
radix -decimal
force L_in 3 0ns
force x_in 0 0ns, 1 50ns, 2 150ns, 3 250ns, 4 350ns, 0 450ns, 4 550ns
force c_in 0 0ns, -3 50ns, -2 150ns, -1 250ns


########## Run the simulation
run 2500ns
wave zoomfull
configure wave -gridperiod 10ns
configure wave -timelineunits ns
