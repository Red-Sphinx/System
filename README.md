# System Check

## Purpose

Document and investigate the hardware configuration of my ASUS VivoBook X415EA, including changes made through RAM and storage upgrades.

The project records system information, hardware observations, testing results, and comparisons between the different upgrade stages.

## System being investigated

- ASUS VivoBook X415EA
- Intel Core i3-1115G4
- 4 GB onboard DDR4 memory
- One DDR4 SO-DIMM slot
- Existing 256 GB-class WD PC SN530 NVMe SSD

## Version 001 - Before installing the new 2TB SATA SSD and 16GB RAM

### What it checks

- CPU
- RAM
- Motherboard
- BIOS
- Storage
- NVMe
- PCI devices
- Temperatures

## Baseline

- 12 GB RAM
- 256 GB WDC PC SN530 NVMe

## Upgrade stages

- Baseline: 12 GB RAM
- After RAM upgrade: 20 GB RAM
- After SATA upgrade: 20 GB RAM + 2 TB SATA

## RAM upgrade

The 8 GB SO-DIMM was replaced with a 16 GB Crucial DDR4-3200 SO-DIMM.

The resulting system has 20 GB of RAM:

- 4 GB Samsung onboard memory
- 16 GB Crucial CT16G4SFRA32A.C8FB

Initial memory testing with `memtester` completed two passes over 12 GiB with no reported errors.

Further RAM validation will be documented separately.

## Storage upgrade

A 2 TB Crucial BX500 2.5-inch SATA SSD is planned for installation in the laptop's internal SATA bay.

The SATA drive is not yet installed internally.

## NVMe PCIe observation

Linux currently reports the existing WD PC SN530 operating through the upstream PCIe Root Port at PCIe Gen3 x4.

This differs from the published ASUS X415EA specification, which describes the M.2 interface as PCIe 3.0 x2. The observation and the manufacturer's specification are documented separately in `notes/interpretation.md`.
