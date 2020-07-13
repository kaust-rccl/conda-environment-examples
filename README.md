# Simpletransformers

Example showing how to build a conda environment containing the 
[Simpletransformers](https://github.com/ThilinaRajapakse/simpletransformers) library which also shows how to 
correctly combine Conda and Pip to install packages into a Conda environment on Ibex.

# Building the conda environment

The following Bash commands will clone the `simpletransformers` branch of the 
`kaust-rccl/conda-environment-examples` GitHub repo and build the Conda environment as described in the three 
config files `environment.yml`, `requirements.txt`, and `postBuild`. These commands can be run on a login node but 
should be run from somewhere in you Ibex user scratch directory (i.e., `/ibex/scratch/$USERNAME`). The Conda 
environment will be built in the `env` sub-directory inside the `simpletransformers` directory.

```bash
git clone --single-branch --branch simpletransformers https://github.com/kaust-rccl/conda-environment-examples.git
cd simpletransformers
./bin/create-conda-env.sh
```


