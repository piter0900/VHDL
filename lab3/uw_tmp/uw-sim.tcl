source /home/ece327/lib/lib-msim.tcl

proc reload {} {
  vcom -93 +acc -work work-msim mem.vhd lab3.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd
}

if { "lab3_tb.sim" ne "" } {
  source lab3_tb.sim
}


