# Debian

Debian based OS's

Current OS is now Debian Based "AVLinux" which in turn is Based on "MXLInux" which is in turn is Based on "Debian Bookworm".
This install is using ZFSBOOTMENU and REfind Boot Manager in 512M EFI Partition and zfs zroot partition for rest of Disk.
AVLinux as I like to play back audio through my HiFi system. MXLinux as it uses zfs 2.3.0 from it's own repo.
At the moment my zpool is a 2 way mirror but might change to 3 disk raidz if I need more space.

My ASUS maxium V extreme motherboard had the wrong MAC address "88:88:88:88:87:88". Booted into usb stick with Linux Mint and followed this guide:-
https://askubuntu.com/questions/1338578/mac-address-stuck-at-888888888788Using eeupdate64e for linux... It worked...

Modify your bios for nvme boot:----
https://winraid.level1techs.com/t/howto-get-full-nvme-support-for-all-systems-with-an-ami-uefi-bios/30901

Had loads of problems with WD SN580 1TB and SN770 1TB NVME M.2 drives stopping or faulting causing degraded zpools. Needed to update firmware follow guide below:- Tried windows WD update (WD-Dashboard) utils but they did not work for me!!!!!
https://community.frame.work/t/western-digital-drive-update-guide-without-windows-wd-dashboard/20616
