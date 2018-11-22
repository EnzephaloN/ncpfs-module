# SPDX-License-Identifier: GPL-2.0
#
# Makefile for the linux ncp filesystem routines.
#

ifneq ($(KERNELRELEASE),)
# call from kernel build system

obj-$(CONFIG_NCP_FS) += ncpfs.o

ncpfs-y      := dir.o file.o inode.o ioctl.o mmap.o ncplib_kernel.o sock.o \
		ncpsign_kernel.o getopt.o symlink.o

# If you want debugging output, please uncomment the following line
# ccflags-y := -DDEBUG_NCP=1

ccflags-y := -I$(PWD) 
ccflags-y += -I$(PWD)/include
ccflags-y += -DCONFIG_NCPFS_PACKET_SIGNING
ccflags-y += -DCONFIG_NCPFS_STRONG
ccflags-y += -DCONFIG_NCPFS_NFS_NS
ccflags-y += -DCONFIG_NCPFS_OS2_NS
ccflags-y += -DCONFIG_NCPFS_SMALLDOS
ccflags-y += -DCONFIG_NCPFS_NLS
ccflags-y += -DCONFIG_NCPFS_EXTRAS

CFLAGS_ncplib_kernel.o := -finline-functions

else
# external module build

#
# KDIR is a path to a directory containing kernel source.
# It can be specified on the command line passed to make to enable the module to
# be built and installed for a kernel other than the one currently running.
# By default it is the path to the symbolic link created when
# the current kernel's modules were installed, but
# any valid path to the directory in which the target kernel's source is located
# can be provided on the command line.
#
KVER	?= $(shell uname -r)
KDIR	?= /lib/modules/$(KVER)/build
MDIR	?= /lib/modules/$(KVER)
PWD	:= $(shell pwd)

export CONFIG_NCP_FS := m

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

help:
	$(MAKE) -C $(KDIR) M=$(PWD) help

install: ncpfs.ko
	rm -f ${MDIR}/kernel/drivers/staging/ncpfs.ko
	install -m644 -b -D ncpfs.ko ${MDIR}/kernel/drivers/staging/ncpfs/ncpfs.ko
	depmod -aq

uninstall:
	rm -rf ${MDIR}/kernel/drivers/staging/ncpfs/ncpfs.ko
	depmod -aq

endif

.PHONY : all clean install uninstall
