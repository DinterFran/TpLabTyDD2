transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Desktop/TpLabTyDD2/TpLabTyDD2/ParteC/ParteC.vhd}
vcom -93 -work work {C:/Users/franc/Desktop/TpLabTyDD2/TpLabTyDD2/ParteB/ParteB.vhd}
vcom -93 -work work {C:/Users/franc/Desktop/TpLabTyDD2/TpLabTyDD2/ParteB/Sumador_Completo.vhd}

vcom -93 -work work {C:/Users/franc/Desktop/TpLabTyDD2/TpLabTyDD2/ParteC/sumador_Completobloques_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Sumador_Completobloques_testbench

add wave *
view structure
view signals
run -all
