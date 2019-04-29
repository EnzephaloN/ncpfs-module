%define oname   ncpfs

Name:           dkms-%{oname}
Summary:        ncp Filesystem Driver
Group:          System/Kernel and hardware
Version:        2.2.6
Release:        %mkrel 6
License:        GPLv2+
Source0:        %{oname}.zip
BuildArch:      noarch
Requires:       dkms
Requires:       kernel-devel 
Patch0:		ncpfs-dentry_update_name_case.patch
Patch1:		ncpfs-iov_iter_kvec.patch
Patch2:		ncpfs-SKIP_STACK_VALIDATION.patch

%description
This package uses DKMS to automatically build the ncpfs Filesystem Driver kernel module.

%files
%doc README
%{_usrsrc}/%{oname}-%{version}-%{release}/*

%post
[ $1 -ne 1 ] && exit 
KERNELVER=$(uname -r)
ln -fs /usr/src/kernel-devel-${KERNELVER} /lib/modules/${KERNELVER}/build
dkms add -m %{oname} -v %{version}-%{release} --rpm_safe_upgrade &&
dkms build -m %{oname} -v %{version}-%{release} --rpm_safe_upgrade --verbose &&
dkms install -m %{oname} -v %{version}-%{release} --rpm_safe_upgrade --force
true
/sbin/modprobe %{oname}
rm -f /lib/modules/${KERNELVER}/build

%preun
[ $1 -ne 0 ] && exit 
dkms remove --binary -m %{oname} -v %{version}-%{release} --rpm_safe_upgrade --all
/sbin/rmmod %{oname}
true

#--------------------------------------------------------------------
%prep
%setup -qn %{oname}
%patch0 -p1
%patch1 -p1
%patch2 -p1

%install
mkdir -p %{buildroot}%{_usrsrc}/%{oname}-%{version}-%{release}
cp -r * %{buildroot}%{_usrsrc}/%{oname}-%{version}-%{release}

%changelog
