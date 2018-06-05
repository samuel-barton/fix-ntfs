##Fix incorrectly mounted NTFS drives

This program fixes NTFS drives which mount as read-only on dual boot systems 
running both Windows and Linux if Windows Fast Boot is turned on. 

This script is the result of me searching for a good solution to this problem,
not finding one, and deciding that someone should sit down and do it right.

This script finds all currently mounted NTFS drives, and if they are mounted
read-only, and are not supposed to be, according to `/etc/fstab`, then it 
unmounts them, runs `ntfsfix` on them, and then remounts them as read-write. 
`ntfsfix` is a part of the `ntfs-3g` package. 

This script must be run as root.
