#------------------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# user's VHDL code should not refer to IP components (e.g altera_mf)
# to activate the code below, uncomment and make $ single
# currently used only by altera
# xsys( "vlib $FAB_SIM_IP")
# xsys( "vmap $FAB_SIM_IP $FAB_SIM_HOME/vhdl_libs/$FAB_SIM_IP")

#------------------------------------------------------------------------
# compile source files

# xsys( "vcom -93 +acc -work work-msim  mem.vhd lab3.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd")
xsys( "uw-msim-com  mem.vhd lab3.vhd lab3_unsynth_pkg.vhd lab3_tb.vhd")

#------------------------------------------------------------------------
# run simulation

xsys( "vsim -lib work-msim   -Gtest_num=4   -wlf uw_tmp/vsim.wlf -t 1ns -do uw_tmp/uw-sim.tcl lab3_tb(main)")

