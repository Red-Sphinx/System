## lscpu
Purpose: CPU information.

## free -h
Purpose: memory summary.

## lsmem
Purpose: Linux memory block layout.

## dmidecode -t memory
Purpose: firmware-reported memory module information.

## hdparm -I
Purpose: Display ATA/SATA device identification and supported interface capabilities.

Example:

sudo hdparm -I /dev/sda

Useful for identifying supported SATA generations and other ATA device capabilities.

## hdparm -t
Purpose: Perform a simple sequential read timing test.

Example:

sudo hdparm -t --direct /dev/sda

This performs a read-only performance test and does not write test data to the drive.

Example result from the 2 TB Crucial BX500:

480.58 MB/sec

## UDMA CRC Error Count
Purpose: Detect errors in data transmission over the SATA link.

UDMA stands for Ultra Direct Memory Access.
CRC stands for Cyclic Redundancy Check.

The UDMA CRC Error Count is a SMART attribute that records detected communication errors between the computer and the SATA drive.

A non-zero or increasing count can indicate problems with the SATA connection, cable, connector, or signal integrity.

Example:

sudo smartctl -a /dev/sda

Example result from the 2 TB Crucial BX500:

UDMA CRC errors: 0

A value of 0 indicates that no SATA communication CRC errors had been recorded by the drive during the validation.
