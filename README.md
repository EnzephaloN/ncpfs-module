# NCPFS module for Linux >4.16 #
## load as standalone-module ##

    git clone https://github.com/EnzephaloN/ncpfs-module.git
    cd ncpfs-module
    make
    sudo make install
    sudo modprobe ncpfs
    sudo lsmod | grep ncpfs
    
## Also available as DKMS-thingy ##

https://github.com/EnzephaloN/ncpfs-dkms.git
