transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Alexander/Desktop/CLK {C:/Users/Alexander/Desktop/CLK/top.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alexander/Desktop/CLK {C:/Users/Alexander/Desktop/CLK/clk_div.v}
vlog -vlog01compat -work work +incdir+C:/Users/Alexander/Desktop/CLK {C:/Users/Alexander/Desktop/CLK/display_nums.v}

