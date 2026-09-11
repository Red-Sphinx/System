#!/bin/bash

# Consider that the following tools are already installed:
# 1. nvme-cli (sudo apt install nvme-cli)
# 2. SMART Tools (sudo apt install smartmontools)


echo "===== date ====="
date

printf "\n"

echo "===== lsblk -d -o NAME,SIZE,MODEL,SERIAL,TRAN,ROTA ====="
lsblk -d -o NAME,SIZE,MODEL,SERIAL,TRAN,ROTA

printf "\n"

echo "===== sudo nvme list ====="
sudo nvme list

printf "\n"

echo "===== sudo nvme id-ctrl /dev/nvme0 ====="
sudo nvme id-ctrl /dev/nvme0

printf "\n"

echo "===== sudo dmidecode -t memory ====="
sudo dmidecode -t memory

printf "\n"

echo "===== sudo smartctl -a /dev/nvme0 ====="
sudo smartctl -a /dev/nvme0

printf "\n"

echo "===== lspci | grep -i -E 'non-volatile|nvme' ====="
lspci | grep -i -E 'non-volatile|nvme'

printf "\n"

echo "===== PCIe Link Information ====="

echo "===== sudo lspci -vv -s 10000:e1:00.0 ====="
sudo lspci -vv -s 10000:e1:00.0

printf "\n"

# echo "===== watch -n 2 'sudo nvme smart-log /dev/nvme0' ====="
# watch -n 2 'sudo nvme smart-log /dev/nvme0'

printf "\n"

echo "===== sudo nvme smart-log /dev/nvme0 ====="
sudo nvme smart-log /dev/nvme0

printf "\n"


