transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/noname/Documentos/lfu {/home/noname/Documentos/lfu/lfu.sv}

