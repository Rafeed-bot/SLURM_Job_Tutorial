#!/bin/bash

#SBATCH -J Mamba_Job
#SBATCH -t 20:00:00
#SBATCH -N 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 48
#SBATCH --mem-per-cpu 3500
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err
#SBATCH -p normal

# Get the command-line arguments
data_type=$1

# Run Python with the arguments
python 10_split_dilution_sample_generation.py "$data_type"
