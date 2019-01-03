project new

# Establish the location of this script and use it to reference all
# other files in this example
set sfd [file dirname [info script]]
# Reset the options to the factory defaults
solution new -state initial 
solution options defaults

# Input Files
solution file add [file join $sfd dct.cpp]

go analyze

solution library add mgc_sample-065nm-dw_beh_dc -- -rtlsyntool DesignCompiler -vendor Sample -technology 065nm -Designware Yes

directive set -CLOCKS {clk {-CLOCK_PERIOD 5.0 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 2.5 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
directive set -CLOCK_NAME dillons_clk

# Hierarchy
directive set -DESIGN_HIERARCHY { dct }

go extract

