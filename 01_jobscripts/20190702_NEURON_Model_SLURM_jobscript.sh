#!/bin/bash
#-----------------------------------------------------------------
# Example SLURM job script to run MPI Job on Mogon.
#
# This script requests one node.
# The walltime is defined as 5 hours - for test reasons.  
#-----------------------------------------------------------------
 
#SBATCH -J input05              # Job name
#SBATCH -o input05.%j.out       # Specify stdout output file (%j expands to jobId)
#SBATCH -p smp	 	        #  "smp"-Partition on MOGON2
#SBATCH -N 1                    # Total number of nodes requested (64 cores/node)
#SBATCH -n 1	                # Total number of tasks
#SBATCH -t 5:00:00              # Run time (hh:mm:ss) - 0.5 hours
#SBATCH --mem=2G		# reserve enough memory # start with 2G 
 
#SBATCH -A m2_jgu-ob            # Specify allocation to charge against
 
# Loading the needed python module. 
module load lang/Python/3.6.6-foss-2018b  
  
# Launch NEURON with nrngui -nogui
# mosinit4.hoc will call "OBNet4.hoc"
# this is for all cases of Km2p = 0.4
# seedU = 85 and 90
# Odor_U = 0.5 and 1.0

srun nrngui -nogui mosinit2.hoc
