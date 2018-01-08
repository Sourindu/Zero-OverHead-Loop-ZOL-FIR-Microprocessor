set project_name "fir4dlms" 
do {tb_ini.do} $1

########## Add I/O signals to wave window
add wave clk reset
radix -decimal
add wave x_in d_in 
add wave -divider  ""
format -analog
add wave  f0_out f1_out 
add wave y_out e_out

######### Add stimuli data
force clk 0 0ns, 1 50ns -r 100ns
force reset 1 0ns, 0 100ns
force x_in 64 0 ns, 111 100ns, -64 200ns, -111 300 ns -r 400ns
force d_in 10  0ns, 60 100ns,   9  200 ns, -41 300ns
force d_in 10 400ns,60 500ns,  10 600ns,   -39 700ns
force d_in 11 800ns,60 900ns,  10 1us,     -40 1.1us
force d_in 10 1.2us,59 1.3us,   9 1.4us,   -41 1.5us
force d_in 10 1.6us,60 1.7us,  10 1.8us,   -39 1.9us
force d_in 11 2.0us,60 2.1us,  10 2.2us,   -40 2.3us
force d_in 10 2.4us,59 2.5us,   9 2.6us

########## Run the simulation
run 2700ns
wave zoomfull
configure wave -gridperiod 1000ns
configure wave -timelineunits ns
