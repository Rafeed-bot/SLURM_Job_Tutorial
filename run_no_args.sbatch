#!/bin/bash

#SBATCH -J Mamba_Job
#SBATCH -t 48:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 48
#SBATCH --mem-per-cpu 3500
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH -p normal

# Run python
python train__10_split_samtools_dilution.py