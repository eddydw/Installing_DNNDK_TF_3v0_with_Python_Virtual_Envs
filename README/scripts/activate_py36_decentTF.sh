#!/bin/sh

echo ""
echo "Python3.6 vEnv, DNNDK3.0TF, OpenCV3.4.3, CUDA-9.0 cuDNN-7.0.5, TF-GPU1.9/Keras2.2.4 "
echo ""

source ~/.bashrc

# virtualenv for python3.6
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONPATH=/usr/local/lib/python3.6/dist-packages:$PYTHONPATH


# Decent TF

#NVIDIA CUDA 9.0 Toolkit
export PATH=/usr/local/cuda-9.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
export PATH=/usr/local/bin/:$PATH

export PATH=/usr/local/cuda-8.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64/:$LD_LIBRARY_PATH

# enter the virtualenv
workon py36_decentTF
