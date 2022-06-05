# Set Environment Variables
# setenv PDK_ROOT /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130
# setenv NGSPICE_DIR ~/open-puf/sim
# setenv DESIGN_DIR ~/open-puf/design

setenv PDKPATH /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A

# load modules
module load base/1.0
module load magic/latest
module load netgen
module load matlab/caddy2020
module load vcs

# add search path
set -l path = ( $path /cad/gaw3/bin ) 
