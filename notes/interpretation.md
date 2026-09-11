## Current NVMe identification

PCI address:

10000:e1:00.0

Device:

SanDisk Corp SanDisk Ultra 3D / WD PC SN530,
IX SN530, Blue SN550 NVMe SSD (DRAM-less)

Linux identifies this as an NVMe controller.

The installed drive is the existing 256GB-class WD PC SN530 NVMe SSD.


## Current NVMe PCIe connection

The NVMe SSD is connected through:

10000:e0:1c.4
Intel Tiger Lake-LP PCI Express Root Port #5

The NVMe controller is:

10000:e1:00.0
WD PC SN530 / SanDisk NVMe

### Root Port

LnkCap:
Speed 8GT/s, Width x4

LnkSta:
Speed 8GT/s, Width x4

### NVMe endpoint

LnkCap:
Speed 8GT/s, Width x4

LnkSta:
Speed 8GT/s, Width x4

### Interpretation

8 GT/s corresponds to PCIe Gen3 signalling.

The upstream PCIe Root Port and the NVMe endpoint both report
an active PCIe Gen3 x4 link.

Therefore, the existing WD PC SN530 is currently operating
over a PCIe Gen3 x4 connection.

This differs from the ASUS X415EA specification, which describes
the M.2 interface as PCIe 3.0 x2. The actual PCIe configuration
reported by the installed hardware and Linux is therefore recorded
here separately from the published ASUS specification.
