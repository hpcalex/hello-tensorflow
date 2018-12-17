#!/bin/sh
set -e
set -x

# Copyright (C) 2018 Bibliotheca Alexandrina

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# *** Set Up `conda` Environment
#
# This procedure narrates how to set up a `conda` environment, which may
# then be used to install software from the Anaconda Python data science
# distribution, e.g., TensorFlow and Keras.
#
# Anaconda distribution:
# https://www.anaconda.com/
#
# Conda package and environment management tool:
# https://conda.io/
# https://conda.io/docs/commands.html
#
# The BA-HPC is thankful to its users who have contributed to the
# information in this procedure.
#
# NOTE: Before executing this procedure, change to a directory where
# there is sufficient storage space for `conda` package download and
# environment directories, such as the home directory or a directory on
# a shared file system (e.g., /lfs01).
#
# NOTE: This procedure overwrites ~/.condarc if it already exists.

# 01. Load Module
#
# Load the Anaconda module (Python data science platform, which uses the
# `conda` package and environment management tool:

module load Anaconda3

# 02. Create `conda` Runtime Configuration File
#
# Set `conda` package download directory and environment directory in
# .condarc:

mkdir -p conda_pkgs
mkdir -p conda_envs
cat <<EOF >~/.condarc
pkgs_dirs:
  - $PWD/conda_pkgs
envs_dirs:
  - $PWD/conda_envs
EOF

# 03. Create `conda` Environment
#
# Set up the `conda` environment:

conda create -p conda_envs/conda_env -m

# NOTE: Use `source activate conda_env` (where conda_env is the name of
# a `conda` environment directory) to activate a `conda` environment in
# an interactive shell.
