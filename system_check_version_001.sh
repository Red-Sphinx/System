#!/bin/bash

# Version 001 - System identification

# Considering that the following tools are installed:
# 1. lm-sensors (sudo apt install lm-sensors)

# Usage: ./system_check_version_001.sh >> results/baseline-12GB.txt

echo "===================="
echo "=====   DATE   ====="
echo "===================="
date
echo "===================="

printf "\n"

echo "====================="
echo "=====    CPU    ====="
echo "====================="

printf "\n"

echo "===== lscpu ====="
lscpu

printf "\n"

echo "===== nproc ====="
nproc

printf "\n"

echo "===== getconf _NPROCESSORS_ONLN ====="
getconf _NPROCESSORS_ONLN

printf "\n"

echo "====================="
echo "=====    RAM    ====="
echo "====================="

printf "\n"

echo "===== free -h ====="
free -h

printf "\n"

echo "===== lsmem ====="
lsmem

printf "\n"

echo "===== sudo dmidecode -t memory ====="
sudo dmidecode -t memory

printf "\n"

echo "======================="
echo "===== Motherboard ====="
echo "======================="

printf "\n"

echo "===== sudo dmidecode -t baseboard ====="
sudo dmidecode -t baseboard

printf "\n"

echo "===================="
echo "=====   BIOS   ====="
echo "===================="

printf "\n"

echo "===== sudo dmidecode -t bios ====="
sudo dmidecode -t bios

printf "\n"

echo "====================="
echo "=====  Storage  ====="
echo "====================="

printf "\n"

echo "===== lsblk ====="
lsblk

printf "\n"

echo "===== lsblk -f ====="
lsblk -f

printf "\n"

echo "===== lsblk -d -o NAME,SIZE,MODEL,SERIAL,TRAN,ROTA ====="
lsblk -d -o NAME,SIZE,MODEL,SERIAL,TRAN,ROTA

printf "\n"


echo "===================="
echo "=====   NVMe   ====="
echo "===================="

printf "\n"

echo "===== sudo nvme list ====="
sudo nvme list

printf "\n"


echo "======================="
echo "===== PCI devices ====="
echo "======================="

printf "\n"

echo "===== lspci ====="
lspci

printf "\n"


echo "========================"
echo "===== Temperatures ====="
echo "========================"

printf "\n"

echo "===== sensors ====="
sensors
