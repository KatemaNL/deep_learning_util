# Description
Script for printing system- and version information about installed hardware and software used in deep learning.
Aimed at Keras with Tensorflow on Linux with NVIDIA hardware.

# Background 
I have come about the set of commands in this script when trying to compile Tensorflow from source to work 
with my newly purchased Nvidia Geforce RTX 2070. I switched between software versions multiple times to get it to work.
I used the commands in this script to check which software versions are actually installed and to find any discrepancies between them.

# Tensorflow 1.12 build
In the end I succeeded in a build of Tensorflow 1.12 from source using the following:
- OS: Ubuntu 18.04
- linux kernel: 4.15.0-45-generic
- architecture: amd64 (so 64-bit)
- python: 3.6.2
- tensorflow: 1.12.0
- cudnn: 7.5
- nvcc: 10.0
- CUDA: 10.0.130
- gcc: 4.8.5
- g++: 4.8.5
- bazel: 0.15.0

Is used this build to work with:
- keras: 2.2.4
- keras-applications: 1.0.6
- keras-preprocessing: 1.0.5

The build is available for download [here](http://download.katema.nl/python_packages/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl).

# Tensorflow 1.13 build
- OS: Ubuntu 18.04
- linux kernel: 4.15.0-45-generic
- architecture: amd64 (so 64-bit)
- python: 3.6.2
- tensorflow: 1.13.1
- cudnn: 7.4
- nvcc: 10.0
- CUDA: 10.0.130
- gcc: 4.8.5
- g++: 4.8.5
- bazel: 0.19.2

The build is available for download [here](http://download.katema.nl/python_packages/tensorflow-1.13.1-cp36-cp36m-linux_x86_64.whl).
     
# Requirements
- OS: Linux
- Hardware: NVIDIA

# Restrictions
Software: Keras with Tensorflow (Theano, Pytorch, Caffe, and others are not supported)
  
# Disclaimer
These scripts are highly experimental and they come without warranty of any kind.
I take no liability for the accuracy, correctness, completeness, or usefulness of these scripts nor for any sort of damages using these scripts may cause.

<span style="color:red">**Use these script at your own risk only!**</span>

# Software Instruction Flow
The following image helped me getting a better intuition of the flow of software instructions:

![alt text](img/software_instruction_flow.png "Software Instruction Flow")

Links:
- https://www.tensorflow.org/guide/extend/architecture
- https://docs.nvidia.com/deeplearning/sdk/
- https://docs.nvidia.com/cuda/cuda-c-programming-guide/
- https://docs.nvidia.com/cuda/parallel-thread-execution/

