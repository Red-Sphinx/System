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
