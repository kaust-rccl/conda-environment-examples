#!/bin/bash --login

set -e

# creates the conda environment
PROJECT_DIR=$PWD
conda env create --prefix $PROJECT_DIR/env --file $PROJECT_DIR/environment.yml --force

# activate the conda env before installing PyTorch Geometric via pip
conda activate $PROJECT_DIR/env
TORCH=1.7.0
CUDA=cu110 
python -m pip install torch-scatter --no-cache-dir --no-index --find-links https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html
python -m pip install torch-sparse --no-cache-dir --no-index --find-links https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html
python -m pip install torch-cluster --no-cache-dir --no-index --find-links https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html
python -m pip install torch-spline-conv --no-cache-dir --no-index --find-links https://pytorch-geometric.com/whl/torch-${TORCH}+${CUDA}.html
python -m pip install torch-geometric --no-cache-dir
