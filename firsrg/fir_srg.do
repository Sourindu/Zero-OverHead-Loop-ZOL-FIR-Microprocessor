set project_name "fir_srg" 
do {tb_ini.do} $1

########## Add I/O signals to wave window
add wave clk reset
radix -decimal
add wave x
add wave -divider  "" 
add_local /fir_srg/tap
add wave -divider  ""
add wave y

######### Add stimuli data
force clk 0 0ns, 1 50ns -r 100ns
force reset 1 0ns, 0 100ns
force x 0 0ns, 10 100ns, 0 200ns

########## Run the simulation
run 700 ns  
wave zoomfull
