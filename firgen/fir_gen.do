set project_name "fir_gen" 
vlib work
vcom $project_name.vhd
vsim work.${project_name}(fpga)

########## Add I/O signals to wave window
add wave  clk reset Load_x
radix -decimal
add wave -divider  "Inputs:"
add wave x_in c_in 
add wave -divider  "Local:"
add wave x
add wave c 
add wave p 
add wave a
add wave -divider  "Outputs:"
add wave y_out 

######### Add stimuli data
force clk 0 0ns, 1 25ns -r 50ns
force reset 1 0ns, 0 50ns
force Load_x 0 0ns, 1 250ns
force x_in 0 0ns, 100 300ns, 0 350ns
force c_in 0 0ns, 124 50ns, 214 100ns, 57 150ns, -33 200ns

########## Run the simulation
run 750 ns  
wave zoomfull
configure wave -gridperiod 100ns
configure wave -timelineunits ns
