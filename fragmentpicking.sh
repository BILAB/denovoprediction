#!/bin/sh
<<<<<<< HEAD

$ROSETTA3/bin/fragment_picker.linuxgccrelease @flags
=======
#PBS -l nodes=lento:ppn=16,walltime=05:00:00
#PBS -q default
#PBS -m ae
#PBS -M moriwaki@bi.a.u-tokyo.ac.jp

### must include these lines  
test $PBS_O_WORKDIR && cd $PBS_O_WORKDIR
# show the calculation node
echo `hostname`
# run the environment module
. /usr/local/Modules/init/profile.sh
### Write your qsub script from here.

module load gnu/gcc_5.4.0 openmpi/3.0.0_gcc-5.4.0 Rosetta/ver3.10_shared

# ${PBS_NP} check
test ${PBS_NP} || PBS_NP=16

$ROSETTA3/bin/fragment_picker.linuxgccrelease @flags

>>>>>>> 221613a9af4725d2a1408e45e649af4217f1ea65
