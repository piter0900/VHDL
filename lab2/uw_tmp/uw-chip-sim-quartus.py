#------------------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#------------------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf Y://altera/vhdl_libs/altera_mf")
# xsys( "vmap altera_mf Y://altera")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii Y://altera/vhdl_libs/cycloneii")

#------------------------------------------------------------------------
# compile source files

# xsys( "vcom -93 +acc -work work-msim   fir_synth_pkg.vhd fir_tb.vhd")

xsys( "uw-msim-com   fir_synth_pkg.vhd fir_tb.vhd")

#------------------------------------------------------------------------
# run simulation
xsys( "vsim -lib work-msim     -wlf uw_tmp/vsim.wlf -t 1ns -do uw_tmp/uw-sim.tcl fir_tb")
