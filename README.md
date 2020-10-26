### cks -- [c]ompile [k]ernal [s]tats
##### Simple BASH script for some benchmarking based on kcbench

##### News 2020-10-26
With a new version of kcbench (version 0.9) the script was updated today. 

##### Todo

- [x] start improvements
- [x] Prio: check new version of kcbench 0.9
- [ ] different compiler
- [ ] more CPUs results
- [x] newer Kernel
- [ ] any sugetions?


USAGE: cks $PATH2KERNEL

The scripts wites compile times from 1 to cores * 2. Please change steps if needed. Here are my stats based on the following evoirement:

- CPU: AMD Ryzen Threadripper 3970X (32 cores, 64 threads)
- RAM: 128 GB DDR4-3200
- Storage: PCI4 NVE SSD 2 TB
- OS: Fedora Linux 31
- Compiler: gcc (GCC) 9.2.1 20190827
- kcbench Version 0.4.1
- Kernel: 5.4.6 from Kernel.org


|Threads|Time in sec.|
|-------|------------|
|1      |616.09
|2      |313.93
|4      |176.24
|8      |84.54
|16     |46.60
|32     |30.46
|64     |24.48


Some stats with newer kernel, gcc and kcbench

- CPU: AMD Ryzen Threadripper 3970X (32 cores, 64 threads)
- RAM: 128 GB DDR4-3200
- Storage: PCI4 NVE SSD 2 TB
- OS: Fedora Linux 32
- Compiler: gcc (GCC) 10.2.1 20201016
- kcbench Version 0.9
- Kernel: 5.9.1 from Kernel.org


|Threads|Time in sec.|
|-------|------------|
|1      |616.09
|2      |313.93
|4      |183.255
|8      |96.93
|16     |55.86
|32     |33.76
|64     |29.30

