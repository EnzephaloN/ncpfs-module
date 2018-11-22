# NCPFS module for Linux >4.16#
## load with DKMS ##

    git clone https://git.enzephalon.de/enzephalon/ncpfs-module.git
    cd ncpfs-module
    make
    sudo make install
    sudo modprobe ncpfs
    sudo lsmod | grep ncpfs