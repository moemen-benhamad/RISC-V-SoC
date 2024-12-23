transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {O:/SLE 3A S9/Systeme sur puce/TP - A/controleur.vhd}

vcom -93 -work work {O:/SLE 3A S9/Systeme sur puce/TP - A/tb_controleur.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_controleur

add wave *
view structure
view signals
run -all
