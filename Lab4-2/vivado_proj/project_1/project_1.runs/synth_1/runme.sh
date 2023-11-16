#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vitis/2022.1/bin:/tools/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2022.1/bin
else
  PATH=/tools/Xilinx/Vitis/2022.1/bin:/tools/Xilinx/Vivado/2022.1/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

<<<<<<< HEAD:Lab4-2/vivado_proj/project_1/project_1.runs/synth_1/runme.sh
HD_PWD='/home/ubuntu/SoC-Lab-FIR_Lab4/Lab4-2/vivado_proj/project_1/project_1.runs/synth_1'
=======
HD_PWD='/home/ubuntu/SoC-Lab-FIR_Lab4/Lab4-1/vivado_proj/project_1/project_1.runs/synth_1'
>>>>>>> d8da07279c1c112e3dbde45d1073e7b1e0f91742:Lab4-1/vivado_proj/project_1/project_1.runs/synth_1/runme.sh
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log user_proj_example.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source user_proj_example.tcl