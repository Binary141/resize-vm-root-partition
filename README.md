# resize-vm-root-partition
This will automatically resize ubuntu 21.04 vm lvm partition to fill new partition size

If you receive the error ```/bin/bash^M: bad interpreter: No such file or directory``` when running the script, run ```sed -i -e 's/\r$// resize_disk.sh'```
