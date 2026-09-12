# System Check

## Purpose

Document and investigate the hardware configuration of my ASUS VivoBook X415EA, including changes made through RAM and storage upgrades.

The project records system information, hardware observations, testing results, and comparisons between the different upgrade stages.

## System being investigated

- ASUS VivoBook X415EA
- Intel Core i3-1115G4
- 4 GB Samsung onboard DDR4-3200
- 16 GB Crucial CT16G4SFRA32A.C8FB DDR4-3200
- Total RAM: 20 GB
- Existing 256 GB-class WD PC SN530 NVMe SSD
- 2 TB Crucial BX500 2.5-inch SATA SSD

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

## Final configuration

The upgrade project resulted in:

- 20 GB DDR4 RAM
- 256 GB-class WD PC SN530 NVMe SSD
- 2 TB Crucial BX500 SATA SSD

Both the RAM and SATA storage upgrades were tested after installation.

The RAM passed `memtester` and Memtest86+ with zero errors.

The SATA SSD was detected through the internal SATA interface,
negotiated a 6.0 Gb/s link, passed SMART health checks, and achieved 480.58 MB/sec in a direct read test.

## RAM upgrade

The 8 GB SO-DIMM was replaced with a 16 GB Crucial DDR4-3200 SO-DIMM.

The resulting system has 20 GB of RAM:

- 4 GB Samsung onboard memory
- 16 GB Crucial CT16G4SFRA32A.C8FB

Initial memory testing with `memtester` completed two passes over 12 GiB with no reported errors.

## RAM validation

The 20 GB configuration was tested using both `memtester`
and Memtest86+.

`memtester` completed two passes over 12 GiB with no errors.

Memtest86+ v7.20 then tested 19.7 GB for four complete passes
over 4:28:45 with zero errors.

The RAM upgrade is considered successfully validated.

Detailed results are documented in:

`results/ram-validation-20GB.txt`

## Storage upgrade

A 2 TB Crucial BX500 2.5-inch SATA SSD was installed in
the laptop's internal 2.5-inch SATA bay using the ASUS HDD FFC cable.

The drive was successfully detected by both Windows 11
and Debian.

The internal SATA link negotiated at 6.0 Gb/s.

A direct read test using `hdparm` produced:

480.58 MB/sec

SMART reported:

- Health: PASSED
- Current SATA speed: 6.0 Gb/s
- UDMA CRC errors: 0
- SATA interface downshift: 0
- Temperature: 30°C at time of test

A video stored on the drive was also successfully played.

Detailed results are documented in:

`results/sata-validation-2TB-internal.txt`

## NVMe PCIe observation

Linux currently reports the existing WD PC SN530 operating through the upstream PCIe Root Port at PCIe Gen3 x4.

This differs from the published ASUS X415EA specification, which describes the M.2 interface as PCIe 3.0 x2. The observation and the manufacturer's specification are documented separately in `notes/interpretation.md`.
