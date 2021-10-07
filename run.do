vlib work

vlog repeat60.v +acc
vlog repeat60_tb.v +acc

vsim work.tb
add wave -r *
run -all
