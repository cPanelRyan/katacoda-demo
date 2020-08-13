#!/usr/bin/env bash
cd /home
curl -o latest -L https://securedownloads.cpanel.net/latest
sh latest --noexec --keep
cd installd
sed -i 's/768/512/' install
sed -i 's/1_024,/512,/' install
hostname "cp$RANDOM.kata.cpanel.net"
yum clean all
yum makecache
yum -y update
./bootstrap
