#!/usr/bin/env python

# list-gpu_devices/list.py (Python code)

import tensorflow
import time

from tensorflow.python.client import device_lib

print([x.name for x in
  device_lib.list_local_devices() if x.device_type == 'GPU'])
