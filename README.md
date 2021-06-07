# NCPFS module for Linux >= 4.18 #
Because the kernel dropped support for NCPFS with 4.18, we try to keep this as module alive.

## use master-branch for current kernel >= 5.12 ##

### as a standalone module ###

    git clone https://github.com/EnzephaloN/ncpfs-module.git
    cd ncpfs-module
    make
    sudo make install
    sudo modprobe ncpfs
    sudo lsmod | grep ncpfs

### for older kernels please see branches! ###
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_4.19
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_4.20
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.2
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.6


### DKMS-thingy ###

https://github.com/EnzephaloN/ncpfs_dkms.git
