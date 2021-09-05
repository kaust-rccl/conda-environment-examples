#!/bin/bash
#SBATCH --time=2:00:00
#SBATCH --mem=16G
#SBATCH --cpus-per-task=6
#SBATCH --gres=gpu:v100:1
#SBATCH --constraint=cpu_intel_gold_6142|cpu_intel_platinum_8260
#SBATCH --partition=batch
#SBATCH --job-name=create-conda-env
#SBATCH --mail-type=ALL
#SBATCH --output=bin/%x-%j-slurm.out
#SBATCH --error=bin/%x-%j-slurm.err

module purge
module load cuda/10.1.243
./bin/create-conda-env.sh
