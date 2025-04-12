#!/binbash

## zpool mounted at /mnt
## zroot/casa for datasets that do not need or want snapshotting

zfs create -o mountpoint=none zroot-1/ROOT
zfs create -o canmount=on -o mountpoint=/ zroot-1/ROOT/debian  
zpool set bootfs=zroot-1/ROOT/debian zroot-1
zfs create -o mountpoint=/home zroot-1/home
zfs create zroot-1/home/mark
zfs create zroot-1/home/mark/Downloads
zfs create zroot-1/home/mark/Documents
zfs create zroot-1/home/mark/Music
zfs create zroot-1/home/mark/Music/flac
zfs create zroot-1/home/mark/Music/mp3
zfs create zroot-1/home/mark/Pictures
zfs create zroot-1/home/mark/Videos
zfs create zroot-1/home/monica
zfs create zroot-1/home/mince
zfs create zroot-1/home/mm
zfs create zroot-1/home/visitor
zfs create -o mountpoint=none zroot-1/casa
zfs create -o mountpoint=none zroot-1/casa/mark
zfs create -o mountpoint=/home/mark/Downloads/isos zroot-1/casa/mark/isos  
zfs create -o mountpoint=/home/mark/VirtualBox-VMs zroot-1/casa/mark/VirtualBox-VMs  
ln -s /zroot-1/casa/mark/VirtualBox-VMs "/mnt/home/mark/VirtualBox VMs"
zfs set recordsize=1m zroot-1/home/mark/Music
zfs set recordsize=1m zroot-1/casa/mark/VirtualBox-VMs
zfs set recordsize=1m zroot-1/casa/mark/isos
zfs set recordsize=1m zroot-1/home/mark/Pictures
zfs set recordsize=1m zroot-1/home/mark/Videos

