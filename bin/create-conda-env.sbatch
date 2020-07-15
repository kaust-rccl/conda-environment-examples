#!/bin/bash
#SBATCH --time=2:00:00
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=48G
#SBATCH --cpus-per-gpu=4
#SBATCH --partition=batch
#SBATCH --job-name=create-conda-env
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

module purge
./bin/create-conda-env.sh
