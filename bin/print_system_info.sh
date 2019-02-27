#!/usr/bin/env bash

# !!! Disclaimer !!!:
# These scripts are highly experimental and they come without warranty of any kind.
# I take no liability for the accuracy, correctness, completeness, or usefulness of these scripts nor for any sort of damages using these scripts may cause.
# Use these script at your own risk only!

PYTHON_PACKAGE_VERSIONS=$(pip freeze)
NVIDIA_DRIVER=$(cat /proc/driver/nvidia/version)
CUDA_LOCATION=$(whereis cuda | cut -d " " -f 2)
CUDNN_INFO=$(cat ${CUDA_LOCATION}/include/cudnn.h)

echo
echo timestamp: $(date)
echo
echo 'distribution'
echo '------------'
echo "$(lsb_release -a)"
echo 
echo 'system information'
echo '------------------'
echo "$(uname -a)"
echo architecture: $(dpkg --print-architecture)
echo
echo 'deep learning software stack'
echo '----------------------------'
echo $(python -V), 'which: '$(which python)', points to:' $(readlink -f python)
echo "${PYTHON_PACKAGE_VERSIONS}" | grep Keras
echo "${PYTHON_PACKAGE_VERSIONS}" | grep tensorflow
echo cudnn-version: $(echo "${CUDNN_INFO}" | grep "define CUDNN_MAJOR" | cut -d " " -f 3).$(echo "${CUDNN_INFO}" | grep "define CUDNN_MINOR" | cut -d " " -f 3)
echo nvcc $(nvcc -V | sed -n 4p) '(NVIDIA CUDA Compiler Driver)', 'which: '$(which nvcc), 'points to:' $(readlink -f nvcc)
echo $(cat /usr/local/cuda/version.txt)
echo $(gcc --version | head -n 1) '(GNU Compiler Collection)', 'which: '$(which gcc)', points to:' $(readlink -f gcc)
echo $(g++ --version | head -n 1) '(GNU Compiler Collection)', 'which: '$(which g++), 'points to:' $(readlink -f g++)
echo bazel: $(bazel version 2>/dev/null | grep 'Build label' | cut -d " " -f 3)
echo

echo 'hardware'
echo '--------'
echo PCI-devices: 
echo "$(lspci | grep VGA)"
echo 
echo 'nvidia'
echo '------'
echo driver: $(echo "${NVIDIA_DRIVER}" | head -n 1)
echo built with: $(echo "${NVIDIA_DRIVER}" | grep GCC)
echo NVIDIA System Management Interface program:
echo "$(nvidia-smi)"
