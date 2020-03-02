#!/bin/bash
#SBATCH --time=30:00
#SBATCH --mem=24G
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:1
#SBATCH --partition=debug
#SBATCH --job-name=create-conda-env
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

module load cuda/10.1.243
./bin/create-conda-env.sh
