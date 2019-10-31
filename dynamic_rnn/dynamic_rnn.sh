#!/bin/sh
#SBATCH --job-name=dynamic_rnn
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:05:00

# It may be necessary above to specify an --account e.g. g.alex044.

cd TensorFlow-Examples/examples/3_NeuralNetworks/
python dynamic_rnn.py
