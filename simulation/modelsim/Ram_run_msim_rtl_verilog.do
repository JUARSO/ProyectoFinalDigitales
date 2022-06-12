transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Sumador.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/ShiftRight.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/ShiftLeft.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Restador.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Multiplicador.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Multiplexor.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Modulador.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Divisor.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/ControladorBanderas.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/CompuertaXOR.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/CompuertaOR.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/CompuertaAND.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/ALU.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/clk_pc.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/sum_pc.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/modulo_instrucciones.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/modulo_PC.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/extend.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/decode.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/muxARM.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/condlogic.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/flopenr.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/unidadControl.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/regfile.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Instuction_Register.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/control_Reg_Inst.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/Mov.sv}
vlog -sv -work work +incdir+C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales {C:/Users/arman/Documents/1Semestre2022/ProyectoFinalDigitales/instructionMemory.sv}
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
