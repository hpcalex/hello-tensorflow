#!/bin/sh
#SBATCH --job-name=cifar10_eval
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --time=20:00:00

# It may be necessary above to specify an --account e.g. g.alex044.

cd models/tutorials/image/cifar10/
python cifar10_eval.py
