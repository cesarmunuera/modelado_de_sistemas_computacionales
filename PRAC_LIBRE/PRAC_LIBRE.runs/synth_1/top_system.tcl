# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/PRAC_LIBRE/PRAC_LIBRE.cache/wt} [current_project]
set_property parent.project_path {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/PRAC_LIBRE/PRAC_LIBRE.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo {c:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/PRAC_LIBRE/PRAC_LIBRE.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/debounce_module.vhd}
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/KYPD_controller.vhd}
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/oled_controller.vhdl}
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/spi_controller.vhd}
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/mangm_KYPD.vhd}
  {C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/top_system.vhd}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/top_system.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/cesar/Desktop/Uni/Programas varios/MSC/modelado_de_sistemas_computacionales/SOURCES/top_system.xdc}}]


synth_design -top top_system -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_system.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_system_utilization_synth.rpt -pb top_system_utilization_synth.pb"
