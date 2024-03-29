# make.inc file for MagmaGPU package
# 
# Make sure MAGMA_HOME is set as an environment variable to the path where the MAGMA library is installed
# and set MAGMALIB to appropriate path so as to link to ILP64 version of MAGMA
# Also make sure CUDA_ROOT is set if using MAGMA on NVidia GPUs

CC        = icc
FC        = ifort
CXX       = icpc

ARCH      = xiar
ARCHFLAGS = cr
RANLIB    = ranlib
LD        = xild

MAGMALIB  =$(MAGMA_HOME)

