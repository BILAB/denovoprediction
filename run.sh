#!/bin/sh
#PBS -l nodes=tosto62:ppn=28,walltime=72:00:00
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
test ${PBS_NP} || PBS_NP=2

mpirun -np ${PBS_NP} $ROSETTA3/bin/AbinitioRelax.mpi.linuxgccrelease @options
