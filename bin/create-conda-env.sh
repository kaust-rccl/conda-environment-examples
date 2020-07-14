#!/bin/bash --login

set -e

# set the environment prefix
export ENV_PREFIX=$PWD/env

# create the conda environment
conda env create --prefix $ENV_PREFIX --file environment.yml --force
conda activate $ENV_PREFIX
. postBuild
