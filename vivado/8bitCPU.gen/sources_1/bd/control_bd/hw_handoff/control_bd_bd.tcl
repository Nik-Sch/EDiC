
################################################################
# This is a generated script based on design: control_bd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source control_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# control

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name control_bd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set i_clk [ create_bd_port -dir I -type clk i_clk ]
  set i_flagNZero [ create_bd_port -dir I i_flagNZero ]
  set i_flagNegative [ create_bd_port -dir I i_flagNegative ]
  set i_instrCode [ create_bd_port -dir I -from 7 -to 0 i_instrCode ]
  set i_nclk [ create_bd_port -dir I -type clk -freq_hz 100000000 i_nclk ]
  set i_reset [ create_bd_port -dir I -type rst i_reset ]
  set o_ctrlAluNOE [ create_bd_port -dir O o_ctrlAluNOE ]
  set o_ctrlAluOp [ create_bd_port -dir O -from 1 -to 0 o_ctrlAluOp ]
  set o_ctrlAluSub [ create_bd_port -dir O o_ctrlAluSub ]
  set o_ctrlAluYNWE [ create_bd_port -dir O o_ctrlAluYNWE ]
  set o_ctrlHlt [ create_bd_port -dir O o_ctrlHlt ]
  set o_ctrlMemInstrImmToRam [ create_bd_port -dir O o_ctrlMemInstrImmToRam ]
  set o_ctrlMemInstrNOE [ create_bd_port -dir O o_ctrlMemInstrNOE ]
  set o_ctrlMemInstrNWE [ create_bd_port -dir O o_ctrlMemInstrNWE ]
  set o_ctrlMemMar0NWE [ create_bd_port -dir O o_ctrlMemMar0NWE ]
  set o_ctrlMemMar1NWE [ create_bd_port -dir O o_ctrlMemMar1NWE ]
  set o_ctrlMemPCIncrN [ create_bd_port -dir O o_ctrlMemPCIncrN ]
  set o_ctrlMemPCLoadN [ create_bd_port -dir O o_ctrlMemPCLoadN ]
  set o_ctrlMemRamNOE [ create_bd_port -dir O o_ctrlMemRamNOE ]
  set o_ctrlMemRamNWE [ create_bd_port -dir O o_ctrlMemRamNWE ]
  set o_ctrlMemSPNEn [ create_bd_port -dir O o_ctrlMemSPNEn ]
  set o_ctrlMemSPUp [ create_bd_port -dir O o_ctrlMemSPUp ]
  set o_ctrlReg0NWE [ create_bd_port -dir O o_ctrlReg0NWE ]
  set o_ctrlReg1NWE [ create_bd_port -dir O o_ctrlReg1NWE ]
  set o_ctrlRegAluSel [ create_bd_port -dir O o_ctrlRegAluSel ]
  set o_ctrlRegBusNOE [ create_bd_port -dir O o_ctrlRegBusNOE ]
  set o_ctrlRegBusSel [ create_bd_port -dir O o_ctrlRegBusSel ]

  # Create instance: control_0, and set properties
  set block_name control
  set block_cell_name control_0
  if { [catch {set control_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $control_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: instrDecode, and set properties
  set instrDecode [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 instrDecode ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../microCodeRom.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {24} \
   CONFIG.Read_Width_B {24} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Remaining_Memory_Locations {abbaff} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {32768} \
   CONFIG.Write_Width_A {24} \
   CONFIG.Write_Width_B {24} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $instrDecode

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create port connections
  connect_bd_net -net control_0_o_ctrlAluNOE [get_bd_ports o_ctrlAluNOE] [get_bd_pins control_0/o_ctrlAluNOE]
  connect_bd_net -net control_0_o_ctrlAluOp [get_bd_ports o_ctrlAluOp] [get_bd_pins control_0/o_ctrlAluOp]
  connect_bd_net -net control_0_o_ctrlAluSub [get_bd_ports o_ctrlAluSub] [get_bd_pins control_0/o_ctrlAluSub]
  connect_bd_net -net control_0_o_ctrlAluYNWE [get_bd_ports o_ctrlAluYNWE] [get_bd_pins control_0/o_ctrlAluYNWE]
  connect_bd_net -net control_0_o_ctrlHlt [get_bd_ports o_ctrlHlt] [get_bd_pins control_0/o_ctrlHlt]
  connect_bd_net -net control_0_o_ctrlMemInstrImmToRam [get_bd_ports o_ctrlMemInstrImmToRam] [get_bd_pins control_0/o_ctrlMemInstrImmToRam]
  connect_bd_net -net control_0_o_ctrlMemInstrNOE [get_bd_ports o_ctrlMemInstrNOE] [get_bd_pins control_0/o_ctrlMemInstrNOE]
  connect_bd_net -net control_0_o_ctrlMemInstrNWE [get_bd_ports o_ctrlMemInstrNWE] [get_bd_pins control_0/o_ctrlMemInstrNWE]
  connect_bd_net -net control_0_o_ctrlMemMar0NWE [get_bd_ports o_ctrlMemMar0NWE] [get_bd_pins control_0/o_ctrlMemMar0NWE]
  connect_bd_net -net control_0_o_ctrlMemMar1NWE [get_bd_ports o_ctrlMemMar1NWE] [get_bd_pins control_0/o_ctrlMemMar1NWE]
  connect_bd_net -net control_0_o_ctrlMemPCIncrN [get_bd_ports o_ctrlMemPCIncrN] [get_bd_pins control_0/o_ctrlMemPCIncrN]
  connect_bd_net -net control_0_o_ctrlMemPCLoadN [get_bd_ports o_ctrlMemPCLoadN] [get_bd_pins control_0/o_ctrlMemPCLoadN]
  connect_bd_net -net control_0_o_ctrlMemRamNOE [get_bd_ports o_ctrlMemRamNOE] [get_bd_pins control_0/o_ctrlMemRamNOE]
  connect_bd_net -net control_0_o_ctrlMemRamNWE [get_bd_ports o_ctrlMemRamNWE] [get_bd_pins control_0/o_ctrlMemRamNWE]
  connect_bd_net -net control_0_o_ctrlMemSPNEn [get_bd_ports o_ctrlMemSPNEn] [get_bd_pins control_0/o_ctrlMemSPNEn]
  connect_bd_net -net control_0_o_ctrlMemSPUp [get_bd_ports o_ctrlMemSPUp] [get_bd_pins control_0/o_ctrlMemSPUp]
  connect_bd_net -net control_0_o_ctrlReg0NWE [get_bd_ports o_ctrlReg0NWE] [get_bd_pins control_0/o_ctrlReg0NWE]
  connect_bd_net -net control_0_o_ctrlReg1NWE [get_bd_ports o_ctrlReg1NWE] [get_bd_pins control_0/o_ctrlReg1NWE]
  connect_bd_net -net control_0_o_ctrlRegAluSel [get_bd_ports o_ctrlRegAluSel] [get_bd_pins control_0/o_ctrlRegAluSel]
  connect_bd_net -net control_0_o_ctrlRegBusNOE [get_bd_ports o_ctrlRegBusNOE] [get_bd_pins control_0/o_ctrlRegBusNOE]
  connect_bd_net -net control_0_o_ctrlRegBusSel [get_bd_ports o_ctrlRegBusSel] [get_bd_pins control_0/o_ctrlRegBusSel]
  connect_bd_net -net control_0_o_decodeAddr [get_bd_pins control_0/o_decodeAddr] [get_bd_pins instrDecode/addra]
  connect_bd_net -net i_clk_0_1 [get_bd_ports i_clk] [get_bd_pins control_0/i_clk]
  connect_bd_net -net i_flagNZero_0_1 [get_bd_ports i_flagNZero] [get_bd_pins control_0/i_flagNZero]
  connect_bd_net -net i_flagNegative_0_1 [get_bd_ports i_flagNegative] [get_bd_pins control_0/i_flagNegative]
  connect_bd_net -net i_instrCode_0_1 [get_bd_ports i_instrCode] [get_bd_pins control_0/i_instrCode]
  connect_bd_net -net i_nclk_1 [get_bd_ports i_nclk] [get_bd_pins instrDecode/clka]
  connect_bd_net -net i_reset_0_1 [get_bd_ports i_reset] [get_bd_pins control_0/i_reset]
  connect_bd_net -net instrDecode_douta [get_bd_pins control_0/i_decodeData] [get_bd_pins instrDecode/douta]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins instrDecode/ena] [get_bd_pins xlconstant_0/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


