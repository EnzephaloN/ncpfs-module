# NCPFS module for Linux >= 4.18 #
Because the kernel dropped support for NCPFS with 4.18, we try to keep this as module alive.

## master-branch for Kernel >= 5.19 ##

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
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.12
https://github.com/EnzephaloN/ncpfs-module/tree/kernel_5.15


### DKMS-thingy ###

https://github.com/EnzephaloN/ncpfs_dkms.git
