transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Yo/Desktop/franco/TpLabTyDD2/ParteB/ParteB.vhd}
vcom -93 -work work {C:/Users/Yo/Desktop/franco/TpLabTyDD2/ParteB/Sumador_Completo.vhd}

vcom -93 -work work {C:/Users/Yo/Desktop/franco/TpLabTyDD2/ParteB/sumador_Completo_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Sumador_Completo_testbench

add wave *
view structure
view signals
run 200 ns
