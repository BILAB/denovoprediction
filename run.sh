#!/bin/sh

mpirun -np ${PBS_NP} $ROSETTA3/bin/AbinitioRelax.mpi.linuxgccrelease @options
