
################################################################
# This is a generated script based on design: memory_bd
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
# source memory_bd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# memory

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
set design_name memory_bd

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
  set i_breakpointAddress [ create_bd_port -dir I -from 15 -to 0 i_breakpointAddress ]
  set i_breakpointEnableN [ create_bd_port -dir I i_breakpointEnableN ]
  set i_bus [ create_bd_port -dir I -from 7 -to 0 i_bus ]
  set i_clk [ create_bd_port -dir I -type clk i_clk ]
  set i_ctrlInstrNOE [ create_bd_port -dir I i_ctrlInstrNOE ]
  set i_ctrlInstrNWE [ create_bd_port -dir I i_ctrlInstrNWE ]
  set i_ctrlMemInstrImmToRamAddr [ create_bd_port -dir I i_ctrlMemInstrImmToRamAddr ]
  set i_ctrlMemMar0NWE [ create_bd_port -dir I i_ctrlMemMar0NWE ]
  set i_ctrlMemMar1NWE [ create_bd_port -dir I i_ctrlMemMar1NWE ]
  set i_ctrlMemPCToRamN [ create_bd_port -dir I i_ctrlMemPCToRamN ]
  set i_ctrlPCFromImm [ create_bd_port -dir I i_ctrlPCFromImm ]
  set i_ctrlPCLoadN [ create_bd_port -dir I i_ctrlPCLoadN ]
  set i_ctrlPCNEn [ create_bd_port -dir I i_ctrlPCNEn ]
  set i_ctrlRamNOE [ create_bd_port -dir I i_ctrlRamNOE ]
  set i_ctrlRamNWE [ create_bd_port -dir I i_ctrlRamNWE ]
  set i_ctrlSpNEn [ create_bd_port -dir I i_ctrlSpNEn ]
  set i_ctrlSpUp [ create_bd_port -dir I i_ctrlSpUp ]
  set i_reset [ create_bd_port -dir I -type rst i_reset ]
  set o_breakpointHitN [ create_bd_port -dir O o_breakpointHitN ]
  set o_bus [ create_bd_port -dir O -from 7 -to 0 o_bus ]
  set o_instrCode [ create_bd_port -dir O -from 7 -to 0 o_instrCode ]
  set o_ioAddress [ create_bd_port -dir O -from 7 -to 0 o_ioAddress ]
  set o_ioNOE [ create_bd_port -dir O o_ioNOE ]
  set o_ioNWE [ create_bd_port -dir O o_ioNWE ]
  set o_ioSelect [ create_bd_port -dir O o_ioSelect ]

  # Create instance: instrRom, and set properties
  set instrRom [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 instrRom ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../instructionRom.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {24} \
   CONFIG.Read_Width_B {24} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Remaining_Memory_Locations {ffffff} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {32768} \
   CONFIG.Write_Width_A {24} \
   CONFIG.Write_Width_B {24} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $instrRom

  # Create instance: memory, and set properties
  set block_name memory
  set block_cell_name memory
  if { [catch {set memory [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $memory eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ram, and set properties
  set ram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 ram ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Read_Width_A {8} \
   CONFIG.Read_Width_B {8} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {131072} \
   CONFIG.Write_Width_A {8} \
   CONFIG.Write_Width_B {8} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $ram

  # Create instance: ram2, and set properties
  set ram2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 ram2 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Read_Width_A {8} \
   CONFIG.Read_Width_B {8} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {131072} \
   CONFIG.Write_Width_A {8} \
   CONFIG.Write_Width_B {8} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $ram2

  # Create port connections
  connect_bd_net -net Net [get_bd_pins memory/o_ramCE] [get_bd_pins ram/ena] [get_bd_pins ram2/ena]
  connect_bd_net -net i_breakpointAddress_0_1 [get_bd_ports i_breakpointAddress] [get_bd_pins memory/i_breakpointAddress]
  connect_bd_net -net i_breakpointEnableN_0_1 [get_bd_ports i_breakpointEnableN] [get_bd_pins memory/i_breakpointEnableN]
  connect_bd_net -net i_bus_0_1 [get_bd_ports i_bus] [get_bd_pins memory/i_bus]
  connect_bd_net -net i_clk_0_1 [get_bd_ports i_clk] [get_bd_pins instrRom/clka] [get_bd_pins memory/i_clk] [get_bd_pins ram/clka] [get_bd_pins ram2/clka]
  connect_bd_net -net i_ctrlInstrNOE_0_1 [get_bd_ports i_ctrlInstrNOE] [get_bd_pins memory/i_ctrlInstrNOE]
  connect_bd_net -net i_ctrlInstrNWE_0_1 [get_bd_ports i_ctrlInstrNWE] [get_bd_pins memory/i_ctrlInstrNWE]
  connect_bd_net -net i_ctrlMemInstrImmToRamAddr_0_1 [get_bd_ports i_ctrlMemInstrImmToRamAddr] [get_bd_pins memory/i_ctrlMemInstrImmToRamAddr]
  connect_bd_net -net i_ctrlMemMar0NWE_0_1 [get_bd_ports i_ctrlMemMar0NWE] [get_bd_pins memory/i_ctrlMemMar0NWE]
  connect_bd_net -net i_ctrlMemMar1NWE_0_1 [get_bd_ports i_ctrlMemMar1NWE] [get_bd_pins memory/i_ctrlMemMar1NWE]
  connect_bd_net -net i_ctrlMemPCToRamN_0_1 [get_bd_ports i_ctrlMemPCToRamN] [get_bd_pins memory/i_ctrlMemPCToRamN]
  connect_bd_net -net i_ctrlPCFromImm_0_1 [get_bd_ports i_ctrlPCFromImm] [get_bd_pins memory/i_ctrlPCFromImm]
  connect_bd_net -net i_ctrlPCLoadN_0_1 [get_bd_ports i_ctrlPCLoadN] [get_bd_pins memory/i_ctrlPCLoadN]
  connect_bd_net -net i_ctrlPCNEn_0_1 [get_bd_ports i_ctrlPCNEn] [get_bd_pins memory/i_ctrlPCNEn]
  connect_bd_net -net i_ctrlRamNOE_0_1 [get_bd_ports i_ctrlRamNOE] [get_bd_pins memory/i_ctrlRamNOE]
  connect_bd_net -net i_ctrlRamNWE_0_1 [get_bd_ports i_ctrlRamNWE] [get_bd_pins memory/i_ctrlRamNWE]
  connect_bd_net -net i_ctrlSpNEn_0_1 [get_bd_ports i_ctrlSpNEn] [get_bd_pins memory/i_ctrlSpNEn]
  connect_bd_net -net i_ctrlSpUp_0_1 [get_bd_ports i_ctrlSpUp] [get_bd_pins memory/i_ctrlSpUp]
  connect_bd_net -net i_reset_0_1 [get_bd_ports i_reset] [get_bd_pins memory/i_reset]
  connect_bd_net -net instrRom_douta [get_bd_pins instrRom/douta] [get_bd_pins memory/i_romData]
  connect_bd_net -net memory_0_o_instrCode [get_bd_ports o_instrCode] [get_bd_pins memory/o_instrCode]
  connect_bd_net -net memory_0_o_ramAddress [get_bd_pins memory/o_ramAddress] [get_bd_pins ram/addra] [get_bd_pins ram2/addra]
  connect_bd_net -net memory_0_o_ramData [get_bd_pins memory/o_ramData] [get_bd_pins ram/dina]
  connect_bd_net -net memory_0_o_ramWE [get_bd_pins memory/o_ramWE] [get_bd_pins ram/wea] [get_bd_pins ram2/wea]
  connect_bd_net -net memory_0_o_romAddress [get_bd_pins instrRom/addra] [get_bd_pins memory/o_romAddress]
  connect_bd_net -net memory_o_breakpointHitN [get_bd_ports o_breakpointHitN] [get_bd_pins memory/o_breakpointHitN]
  connect_bd_net -net memory_o_bus [get_bd_ports o_bus] [get_bd_pins memory/o_bus]
  connect_bd_net -net memory_o_ioAddress [get_bd_ports o_ioAddress] [get_bd_pins memory/o_ioAddress]
  connect_bd_net -net memory_o_ioNOE [get_bd_ports o_ioNOE] [get_bd_pins memory/o_ioNOE]
  connect_bd_net -net memory_o_ioNWE [get_bd_ports o_ioNWE] [get_bd_pins memory/o_ioNWE]
  connect_bd_net -net memory_o_ioSelect [get_bd_ports o_ioSelect] [get_bd_pins memory/o_ioSelect]
  connect_bd_net -net memory_o_ram2Data [get_bd_pins memory/o_ram2Data] [get_bd_pins ram2/dina]
  connect_bd_net -net ram2_douta [get_bd_pins memory/i_ram2Data] [get_bd_pins ram2/douta]
  connect_bd_net -net ram_douta [get_bd_pins memory/i_ramData] [get_bd_pins ram/douta]

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


