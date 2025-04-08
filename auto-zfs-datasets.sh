#!/binbash

## zpool mounted at /mnt

zfs create -o mountpoint=none zroot-1/ROOT
zfs create -o canmount=on -o mountpoint=/ zroot-1/ROOT/debian  
zpool set bootfs=zroot-1/ROOT/debian zroot-1
zfs create -o mountpoint=/home zroot-1/home
zfs create -o mountpoint=/tmp zroot-1/tmp
zfs create -o mountpoint=/var zroot-1/var
zfs create zroot-1/var/cache
zfs create zroot-1/var/games
zfs create zroot-1/var/lib
zfs create zroot-1/var/lib/docker
zfs create zroot-1/var/log
zfs create zroot-1/var/mail
zfs create zroot-1/var/spool
zfs create zroot-1/var/tmp
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

