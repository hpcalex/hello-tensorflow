# hello-tensorflow

This code repository is an accumulator for scripts intended as
executable examples for users to carry out tasks related to the
TensorFlow machine learning framework on a High-Performance Computing
(HPC) system.

The repository was first started by the HPC group at the Bibliotheca
Alexandrina.

## list-gpu-devices

This example demonstrates the basics of running a job that utilizes GPU
resources under the Slurm Workload Manager.

`conda` is quite handy for managing a Python stack.  With `conda`
installed as module, use something such as the following to activate the
environment:

```
$ module load Anaconda3
$ source activate /share/apps/conda_envs/tensorflow
```

Assuming `tensorflow-gpu` is installed in the environment, change to the
`list-gpu-devices/' directory and submit the job as follows, taking note
of the reported job ID:

```
$ sbatch list.sh
Submitted batch job 41767
```

Use `squeue` to check job status:

```
$ squeue -u $USER
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
             41767       gpu gpu_devi      yid PD       0:00      1 (Resources)
```

Job output will be in a `slurm-*.out` file (output omitted):

```
$ cat slurm-41767.out
```

The last few lines in the output may look something such as the
following:

```
2019-10-28 11:38:33.870180: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1115] Created TensorFlow device (/device:GPU:0 with 10757 MB memory) -> physical GPU (device: 0, name: Tesla K80, pci bus id: 0000:06:00.0, compute capability: 3.7)
['/device:GPU:0']
```
