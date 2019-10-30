#!/bin/sh
set -x

git clone https://github.com/tensorflow/models.git

pip install --user tensorflow-datasets
