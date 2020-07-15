# Simpletransformers

Example showing how to build a Conda environment containing the 
[Simpletransformers](https://github.com/ThilinaRajapakse/simpletransformers) library which depends on 
[NVIDIA Apex](https://github.com/nvidia/apex) (and requires compiling custom CUDA extensions). This example also 
shows how to correctly combine Conda and Pip to install packages into a Conda environment on Ibex.

## Building the Conda environment

The following Bash commands will clone the `simpletransformers` branch of the 
`kaust-rccl/conda-environment-examples` GitHub repo and build the Conda environment as described in the three 
config files `environment.yml`, `requirements.txt`, and `postBuild`. Because the environment requires a full 
build of NVIDIA Apex, building the Conda environment must be run as a job on Ibex compute nodes using `sbatch`. 

The commands should be run from somewhere in you Ibex user scratch directory (i.e., `/ibex/scratch/$USERNAME`). 
The Conda environment will be built in the `env` sub-directory inside the `conda-environment-examples` directory.

```bash
git clone --single-branch --branch simpletransformers https://github.com/kaust-rccl/conda-environment-examples.git
cd conda-environement-examples
sbatch --mail-user $KAUST_EMAIL ./bin/create-conda-env.sbatch
```



