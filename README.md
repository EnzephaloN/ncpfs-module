# NCPFS module for Linux >=4.18 #
## use master-branch for current kernel >= 5.2 ##
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

### DKMS-thingy ###

https://github.com/EnzephaloN/ncpfs_dkms.git
