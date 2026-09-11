#!/bin/bash

# Sytem Check - Version 001

# Usage: ./system_check


echo "===== lscpu ====="
printf "\n"
lscpu

printf "\n"

echo "===== nproc ====="
printf "\n"
nproc

printf "\n"

echo "===== uname -m ====="
printf "\n"
uname -m

printf "\n"

echo "===== cat /proc/cpuinfo ====="
printf "\n"
cat /proc/cpuinfo

printf "\n"

echo "===== grep -c ^processor /proc/cpuinfo ====="
printf "\n"
grep -c ^processor /proc/cpuinfo

printf "\n"

echo "===== getconf _NPROCESSORS_ONLN ====="
getconf _NPROCESSORS_ONLN

printf "\n"



