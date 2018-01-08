set project_name "fft256" 
do {tb_ini.do} $1

########## Add I/O signals to wave window
add wave clk reset
radix -decimal 
add_local /dif256/States/count
add_local /dif256/s
add wave stage_o gcount_o 
add wave -divider  "Inputs:"
add wave xr_in xi_in   
add wave -divider  "Local:"
add wave xr_out xi_out 
add wave w_o dw_o
add wave i1_o i2_o 
add wave k1_o k2_o 
add wave -divider  "Outputs:"
radix -decimal
add wave wo fft_valid rcount_o 
add wave  fftr ffti 

######### Add stimuli data
force clk 0 0ns, 1 12.5ns -r 25ns
force reset 1 0ns, 0 20ns 
force xr_in 0 0ns, 20 50ns,40 75ns,60 100ns,80 125ns,100 150ns,120 175ns,140 200ns, 160 225ns, 0 250ns
force xi_in 0 0ns       

########## Run the simulation
run 65000 ns  
wave zoomfull
