# NCPFS module for Linux >=5.2 #
## as a standalone module ##

    git clone https://github.com/EnzephaloN/ncpfs-module.git
    cd ncpfs-module
    make
    sudo make install
    sudo modprobe ncpfs
    sudo lsmod | grep ncpfs

### for older kernels please see former commits! ###

## DKMS-thingy ##

https://github.com/EnzephaloN/ncpfs_dkms.git
