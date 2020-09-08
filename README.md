# MinkowskiEngine

Example showing how to build a Conda environment containing the 
[MinkowskiEngine](https://github.com/NVIDIA/MinkowskiEngine) together with  
[NVIDIA Apex](https://github.com/nvidia/apex) (both of which require compiling custom CUDA extensions). This example also 
shows how to correctly combine Conda and Pip to install packages into a Conda environment on Ibex.

## Building the Conda environment

The following Bash commands will clone the `minkowski-engine` branch of the 
`kaust-rccl/conda-environment-examples` GitHub repo and build the Conda environment as described in the three 
config files `environment.yml`, `requirements.txt`, and `postBuild`. Because the environment requires a full 
build of NVIDIA Apex, building the Conda environment must be run as a job on Ibex compute nodes using `sbatch`. 

The commands should be run from somewhere in you Ibex user scratch directory (i.e., `/ibex/scratch/$USERNAME`). 
The Conda environment will be built in the `env` sub-directory inside the `conda-environment-examples` directory.

```bash
git clone --single-branch --branch minkowski-engine https://github.com/kaust-rccl/conda-environment-examples.git
cd conda-environement-examples
sbatch --mail-user $KAUST_EMAIL ./bin/create-conda-env.sbatch
```

Once the job finished successfully you can activate the environment as follows.

```bash
conda activate $PWD/env
```


