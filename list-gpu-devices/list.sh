#!/bin/sh
#SBATCH --job-name=gpu_devices
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:15:00

# list-gpu-devices/list.sh (Slurm submission script)

python list.py
