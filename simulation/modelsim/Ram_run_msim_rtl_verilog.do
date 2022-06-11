transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/RamD.sv}

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_Instruction_Memory.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_moduloInstrucciones.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_suma.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_moduloPC.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/testMUX.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_UnidadControl.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_Instuction_Register.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_control_Reg_Inst.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/RAM_Test.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/test_cpu.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Test_Instruction_Memory

add wave *
view structure
view signals
run -all
