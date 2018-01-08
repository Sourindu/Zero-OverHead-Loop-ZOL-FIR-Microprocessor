set project_name "firzol" 
vlib ieee_proposed
vcom -work ieee_proposed fixed_float_types_c.vhdl
vcom -work ieee_proposed fixed_pkg.vhd
vcom -work ieee_proposed float_pkg_c.vhdl
vlib work
vcom $project_name.vhd
vsim work.${project_name}(fpga)

########## Add I/O signals to wave window
add wave -divider "Simulation by Sourindu Chaterjee"
add wave -divider "Control Signals:"
add wave clk reset Load_x Load_c L_in
add wave -divider  "Input Data:" 
radix -decimal
add wave x_in c_in 
add wave -divider  "Outputs:"
add wave -radix decimal c_ar x_ar_out d_out
add wave -color Blue y_out
add wave state

######### Add stimuli data
force clk 0 0ns, 1 50ns -r 100ns
force reset 1 0ns, 0 50ns
force Load_x 0 0ns, 1 50ns, 0 350ns, 1 460ns, 1 760ns, 1 770ns, 0 860ns, 1 1500ns, 0 1950ns
force Load_c 0 0ns, 1 50ns, 0 300ns, 1 1500ns, 0 1950ns
radix -decimal
force L_in 3 0ns, 4 1400ns
force x_in 0 0ns, 1 50ns, 2 150ns, 3 250ns, 4 350ns, 0 450ns, 4 550ns, 1 1550ns, 0 1650ns
force c_in 0 0ns, -3 50ns, -2 150ns, -1 250ns, -5 1550ns, 8 1650ns, 3 1750ns, 7 1850ns


########## Run the simulation
run 2500ns
wave zoomfull
configure wave -gridperiod 10ns
configure wave -timelineunits ns