# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xcku040-ffva1156-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.cache/wt [current_project]
set_property parent.project_path F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib hipero [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:kcu105:part0:1.5 [current_project]
set_property ip_repo_paths f:/Projekty/HIPERO/dev/fpga/ip_repo [current_project]
update_ip_catalog
set_property ip_output_repo f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library hipero F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/imports/srcs/icapmux.vhd
add_files F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap.bd
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_hipero_sem_0/synth/semicap_hipero_sem_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0.xdc]
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_axi_hwicap_0_1/semicap_axi_hwicap_0_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_cmd/fifo_mon_cmd.xdc]
set_property used_in_implementation false [get_files -all f:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/ip/semicap_semicap_engine_0_0_1/semicap_engine.srcs/sources_1/ip/fifo_mon_stat/fifo_mon_stat.xdc]
set_property used_in_implementation false [get_files -all F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top semicap -part xcku040-ffva1156-2-e -mode out_of_context

rename_ref -prefix_all semicap_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef semicap.dcp
create_report "semicap_synth_1_synth_report_utilization_0" "report_utilization -file semicap_utilization_synth.rpt -pb semicap_utilization_synth.pb"

if { [catch {
  file copy -force F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.runs/semicap_synth_1/semicap.dcp F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.ip_user_files/bd/semicap]} {
  catch { 
    file copy -force F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.v F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.ip_user_files/bd/semicap
  }
}

if {[file isdir F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.ip_user_files/bd/semicap]} {
  catch { 
    file copy -force F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.srcs/sources_1/bd/semicap/semicap_stub.vhdl F:/Projekty/HIPERO/dev/fpga/ip_projects/semicap/semicap.ip_user_files/bd/semicap
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]