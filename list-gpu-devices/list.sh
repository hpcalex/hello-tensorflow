#!/bin/sh

#SBATCH --job-name=gpu_devices
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:15:00

# list-gpu-devices/list.sh (Slurm submission script)

# *** TensorFlow: List GPU Devices
#
# This is a Slurm submission script that runs Python code that uses
# TensorFlow to list GPU devices in the system.
#
# This assumes the GPU version of TensorFlow is available in the
# environment.
#
# If the environment is managed by `conda`, use `conda install -n
# conda_env tensorflow-gpu` to install (with `conda_env` being the name
# of the environment).  Use `source activate conda_env` to activate the
# environment before attempting to submit the job using `sbatch`.  See
# also `python/conda-setup.sh` in this code repository.

python list.py
