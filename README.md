# conda-environment-examples

Example showing how to build a conda environment containing the [Deepwave](https://github.com/ar4/deepwave) library (which requires building custom GPU extensions for PyTorch) together with support for distributed training via [Horovod](https://github.com/horovod/horovod).

# Building the conda environment

Run the following command to build the conda environment. This command launches a batch job on the 'debug' partition which builds the conda environment in the `env` sub-directory inside the project root directory.

```bash
sbatch --mail-user $KAUST_EMAIL ./bin/create-conda-env.sbatch
```


