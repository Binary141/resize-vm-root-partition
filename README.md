# resize-vm-root-partition
This will automatically resize ubuntu 21.04 vm lvm partition to fill new partition size

If you receive the error ```/bin/bash^M: bad interpreter: No such file or directory``` when running the script, run ```sed -i -e 's/\r$//' resize_disk.sh```. Then re-run the script to make it work

![example usage](https://user-images.githubusercontent.com/59838814/150665782-64fc293d-1b98-4e28-8cca-11bbe11b2ad3.png)
