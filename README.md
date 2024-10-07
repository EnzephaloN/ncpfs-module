# NCPFS module for Linux >= 4.18 #
Because the kernel dropped support for NCPFS with 4.18, we try to keep this as module alive.

## master-branch for Kernel >= 6.9 ##

> [!CAUTION]
> It may not be a good idea to always run the latest kernel AND require ncpfs. Our patches for ncpfs are always delayed!

### as a standalone module ###

    git clone https://github.com/EnzephaloN/ncpfs-module.git
    cd ncpfs-module
    make
    sudo make install
    sudo modprobe ncpfs
    sudo lsmod | grep ncpfs

### for older kernels please see branches! ###

- Kernel 4.18 - 4.19 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_4.19
- Kernel 4.20 - 5.1 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_4.20
- Kernel 5.2 - 5.5 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.2
- Kernel 5.6 - 5.11 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.6
- Kernel 5.12 - 5.14 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.12
- Kernel 5.15 - 5.18 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.15
- Kernel 5.19 - 6.2 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.19
- Kernel 6.3 - 6.4 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_6.3
- Kernel 6.5 - 6.5 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_6.5
- Kernel 6.6 - 6.7 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_6.6
- Kernel 6.8 : https://github.com/EnzephaloN/ncpfs-module/tree/kernel_6.8

### DKMS-thingy ###

https://github.com/EnzephaloN/ncpfs_dkms.git
