#!/bin/sh
<<<<<<< HEAD

runpsipredplus query.fa
=======
#PBS -l nodes=nobile01:ppn=16
#PBS -q default
#PBS -l walltime=2:00:00

test $PBS_O_WORKDIR && cd $PBS_O_WORKDIR

## run the environment module
. /etc/profile.d/modules.sh
module load psipred/4.0

test $VAR1 || { echo "VAR1 is not set." ; exit 1 ; }
runpsipredplus $VAR1

>>>>>>> 221613a9af4725d2a1408e45e649af4217f1ea65
