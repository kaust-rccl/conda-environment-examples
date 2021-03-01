#!/bin/bash --login

PROJECT_DIR=$PWD
conda env create --prefix $PROJECT_DIR/env --file $PROJECT_DIR/environment.yml --force
