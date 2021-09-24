
################################################################
# This is a generated script based on design: datapath
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
# source datapath_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# alu, regset

# Please add the sources of those modules before sourcing this Tcl script.


# The design that will be created by this Tcl script contains the following 
# block design container source references:
# control_bd, memory_bd

# Please add the sources before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name datapath

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
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $i_clk
  set i_reset [ create_bd_port -dir I -type rst i_reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $i_reset

  # Create instance: alu, and set properties
  set block_name alu
  set block_cell_name alu
  if { [catch {set alu [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alu eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /alu/i_reset]

  # Create instance: control, and set properties
  set control [ create_bd_cell -type container -reference control_bd control ]
  set_property -dict [ list \
   CONFIG.ACTIVE_SIM_BD {control_bd.bd} \
   CONFIG.ACTIVE_SYNTH_BD {control_bd.bd} \
   CONFIG.ENABLE_DFX {0} \
   CONFIG.LIST_SIM_BD {control_bd.bd} \
   CONFIG.LIST_SYNTH_BD {control_bd.bd} \
   CONFIG.LOCK_PROPAGATE {0} \
 ] $control

  # Create instance: memory, and set properties
  set memory [ create_bd_cell -type container -reference memory_bd memory ]
  set_property -dict [ list \
   CONFIG.ACTIVE_SIM_BD {memory_bd.bd} \
   CONFIG.ACTIVE_SYNTH_BD {memory_bd.bd} \
   CONFIG.ENABLE_DFX {0} \
   CONFIG.LIST_SIM_BD {memory_bd.bd} \
   CONFIG.LIST_SYNTH_BD {memory_bd.bd} \
   CONFIG.LOCK_PROPAGATE {0} \
 ] $memory

  # Create instance: regset, and set properties
  set block_name regset
  set block_cell_name regset
  if { [catch {set regset [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $regset eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] [get_bd_pins /regset/i_reset]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins alu/io_bus] [get_bd_pins memory/io_bus] [get_bd_pins regset/io_bus]
  connect_bd_net -net alu_o_flagNZero [get_bd_pins alu/o_flagNZero] [get_bd_pins control/i_flagNZero]
  connect_bd_net -net alu_o_flagNegative [get_bd_pins alu/o_flagNegative] [get_bd_pins control/i_flagNegative]
  connect_bd_net -net control_bd_0_o_ctrlAluNOE [get_bd_pins alu/i_ctrlAluNOE] [get_bd_pins control/o_ctrlAluNOE]
  connect_bd_net -net control_bd_0_o_ctrlAluOp [get_bd_pins alu/i_ctrlAluOp] [get_bd_pins control/o_ctrlAluOp]
  connect_bd_net -net control_bd_0_o_ctrlAluSub [get_bd_pins alu/i_ctrlAluSub] [get_bd_pins control/o_ctrlAluSub]
  connect_bd_net -net control_bd_0_o_ctrlAluYNWE [get_bd_pins alu/i_ctrlAluYNWE] [get_bd_pins control/o_ctrlAluYNWE]
  connect_bd_net -net control_bd_0_o_ctrlMemInstrNOE [get_bd_pins control/o_ctrlMemInstrNOE] [get_bd_pins memory/i_ctrlInstrNOE]
  connect_bd_net -net control_bd_0_o_ctrlMemInstrNWE [get_bd_pins control/o_ctrlMemInstrNWE] [get_bd_pins memory/i_ctrlInstrNWE]
  connect_bd_net -net control_bd_0_o_ctrlMemMar0NWE [get_bd_pins control/o_ctrlMemMar0NWE] [get_bd_pins memory/i_ctrlMemMar0NWE]
  connect_bd_net -net control_bd_0_o_ctrlMemMar1NWE [get_bd_pins control/o_ctrlMemMar1NWE] [get_bd_pins memory/i_ctrlMemMar1NWE]
  connect_bd_net -net control_bd_0_o_ctrlMemPCIncrN [get_bd_pins control/o_ctrlMemPCIncrN] [get_bd_pins memory/i_ctrlPCIncrN]
  connect_bd_net -net control_bd_0_o_ctrlMemPCLoadN [get_bd_pins control/o_ctrlMemPCLoadN] [get_bd_pins memory/i_ctrlPCLoadN]
  connect_bd_net -net control_bd_0_o_ctrlMemRamNOE [get_bd_pins control/o_ctrlMemRamNOE] [get_bd_pins memory/i_ctrlRamNOE]
  connect_bd_net -net control_bd_0_o_ctrlMemRamNWE [get_bd_pins control/o_ctrlMemRamNWE] [get_bd_pins memory/i_ctrlRamNWE]
  connect_bd_net -net control_bd_0_o_ctrlMemSPNEn [get_bd_pins control/o_ctrlMemSPNEn] [get_bd_pins memory/i_ctrlSpNEn]
  connect_bd_net -net control_bd_0_o_ctrlMemSPUp [get_bd_pins control/o_ctrlMemSPUp] [get_bd_pins memory/i_ctrlSpUp]
  connect_bd_net -net control_bd_0_o_ctrlRegAluSel [get_bd_pins control/o_ctrlRegAluSel] [get_bd_pins regset/i_ctrlAluSel]
  connect_bd_net -net control_bd_0_o_ctrlRegBusNOE [get_bd_pins control/o_ctrlRegBusNOE] [get_bd_pins regset/i_ctrlRegBusNOE]
  connect_bd_net -net control_bd_0_o_ctrlRegBusSel [get_bd_pins control/o_ctrlRegBusSel] [get_bd_pins regset/i_ctrlRegBusSel]
  connect_bd_net -net control_bd_0_o_ctrlRegWr0 [get_bd_pins control/o_ctrlReg0NWE] [get_bd_pins regset/i_ctrlReg0NWE]
  connect_bd_net -net control_bd_0_o_ctrlRegWr1 [get_bd_pins control/o_ctrlReg1NWE] [get_bd_pins regset/i_ctrlReg1NWE]
  connect_bd_net -net control_o_ctrlMemInstrImmToRam [get_bd_pins control/o_ctrlMemInstrImmToRam] [get_bd_pins memory/i_ctrlMemInstrImmToRam]
  connect_bd_net -net i_clk_0_1 [get_bd_ports i_clk] [get_bd_pins alu/i_clk] [get_bd_pins control/i_clk] [get_bd_pins memory/i_clk] [get_bd_pins regset/i_clk]
  connect_bd_net -net i_reset_0_1 [get_bd_ports i_reset] [get_bd_pins alu/i_reset] [get_bd_pins control/i_reset] [get_bd_pins memory/i_reset] [get_bd_pins regset/i_reset]
  connect_bd_net -net memory_o_instrCode [get_bd_pins control/i_instrCode] [get_bd_pins memory/o_instrCode]
  connect_bd_net -net regset_0_o_alu [get_bd_pins alu/i_a] [get_bd_pins regset/o_alu]

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


