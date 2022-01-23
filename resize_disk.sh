#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

lvPartition='/dev/mapper/ubuntu--vg-ubuntu--lv'

disk=$(sudo pvs | grep /dev/ | awk '{print $1}')

diskNoNumber=${disk%?} #returns the disk string, without last char, in /dev/sda3 it would return /dev/sda
diskNumber="${disk:~0}" #returns last char of disk, in /dev/sda3 it would return 3

# Uncomment in case debugging is needed
#echo "$disk"
#echo "$diskNoNumber"
#echo "$diskNumber"

sudo growpart $diskNoNumber $diskNumber #grows partition to new size

sudo pvresize $disk #resizes physical volume that contains out volume group

sudo resize2fs $lvPartition

sudo lvextend -l +100%FREE $lvPartition #resizes our logical volume

sudo resize2fs $lvPartition

