### cks -- [c]ompile [k]ernal [s]tats
##### Simple BASH script for some benchmarking based on kcbench

##### News 2020-10-26
With a new version of kcbench (version 0.9) the script was updated today. 

##### Todo

- [x] start improvements
- [x] Prio: check new version of kcbench 0.9
- [ ] different compiler
- [x] more CPUs results
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
|1      |698.66
|2      |383.87
|4      |183.55
|8      |96.93
|16     |55.86
|32     |33.76
|64     |29.30

### 2023-11-01 New results ###
Some stats with another CPU and newer kernel, gcc and kcbench

- CPU: AMD Ryzen 7 5700G (8 cores, 16 threads)
- RAM: 64 GB DDR4-3200
- Storage: PCI4 NVE SSD 1 TB
- OS: Fedora Linux 39 beta
- Compiler: gcc (GCC) 13.2.1 20230918
- kcbench Version 0.9.7
- Kernel: 6.6 from Kernel.org

|Threads|Time in sec.|
|-------|------------|
|1      |994.70
|2      |517.79
|4      |276.83
|8      |157.33
|16     |130.71
