#!/bin/sh

export LD_LIBRARY_PATH=/usr/local/cuda/lib64/:/users/s/l/sliu1/apps/lib64/:$LD_LIBRARY_PATH
export CMAKE_CXX_COMPILER=/users/s/l/sliu1/apps/bin/g++
export CMAKE_CC_COMPILER=/users/s/l/sliu1/apps/bin/gcc
alias sinfo-l='sinfo -N -O partition,nodelist,statelong,gresused,cpusstate,cpusload,freemem,time'
