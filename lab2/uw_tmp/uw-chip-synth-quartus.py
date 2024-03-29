# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-chip-synth-quartus.tcl fir")

xsys("quartus_sh -t /home/ece327/lib/pins-NULL.tcl fir")

# not using mif files (memory initialization)
# my_cp_nofail( "../*.mif", "." )

my_print("map... ")
xsys( "quartus_map fir --source fir_logic.edf --family=CycloneII")

my_print("fit... ")
xsys( "quartus_fit fir --effort=fast --part=EP2C35F672C7")

my_print("tan... ")
# xsys( "quartus_tan fir" )
xsys( "quartus_sta -t uw-chip-synth-quartus-timing.tcl fir" )

my_print( "asm... ")
xsys( "quartus_asm fir" )

my_println( "eda..." )
xsys( "quartus_eda fir --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda fir --simulation --tool=modelsim --format=verilog")

# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/fir.vo"       , "uw_tmp/fir_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/fir.vho"       , "uw_tmp/fir_chip.vhd" )
my_mv( "uw_tmp/simulation/modelsim/fir_vhd.sdo" , "uw_tmp/fir_chip.sdf" )
my_mv( "uw_tmp/fir.sof" , "fir.sof" )

my_cp( "uw_tmp/fir.map.rpt", "RPT/area_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip.rpt", "RPT/timing_chip.rpt", error_level=1 )
my_cp( "uw_tmp/timing_chip_path.rpt", "RPT/timing_chip_path.rpt", error_level=1 )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim uw_tmp/fir_logic.v")

# fix up _chip.vhd file
vgencomp_to_arch( "fir", "chip", [] + [ "fir_synth_pkg.vhd", "fir.vhd" ] )
