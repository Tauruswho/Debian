# Debian

Debian based OS's

Current OS is now Debian Based "AVLinux" which in turn is Based on "MXLInux" which is in turn is Based on "Debian Bookworm".
This install is using ZFSBOOTMENU and REfind Boot Manager in 512M EFI Partition and zfs zroot partition for rest of Disk.
AVLinux as I like to play back audio through my HiFi system. MXLinux as it uses zfs 2.3.1 from it's own repo.
At the moment my zpool is a 2 way mirror but might change to 3 disk raidz if I need more space. Ended up doing a 4 disk set up with mirror-0 and mirror-1.

mark@orac ~> zpool status
  pool: zroot-1
 state: ONLINE
  scan: scrub repaired 0B in 00:02:52 with 0 errors on Wed Apr  9 15:01:43 2025
config:

	NAME                                           STATE     READ WRITE CKSUM
	zroot-1                                        ONLINE       0     0     0
	  mirror-0                                     ONLINE       0     0     0
	    nvme-WD_Blue_SN580_1TB_2339QT404181-part2  ONLINE       0     0     0
	    nvme-WD_Blue_SN580_1TB_2444B8401385-part2  ONLINE       0     0     0
	  mirror-1                                     ONLINE       0     0     0
	    nvme-WD_Blue_SN570_1TB_22427L444901-part2  ONLINE       0     0     0
	    nvme-WD_Blue_SN580_1TB_24271T807415-part2  ONLINE       0     0     0

errors: No known data errors


My ASUS maxium V extreme motherboard had the wrong MAC address "88:88:88:88:87:88". Booted into usb stick with Linux Mint and followed this guide:-
https://askubuntu.com/questions/1338578/mac-address-stuck-at-888888888788Using eeupdate64e for linux... It worked...

Modify your bios for nvme boot:----
https://winraid.level1techs.com/t/howto-get-full-nvme-support-for-all-systems-with-an-ami-uefi-bios/30901

Had loads of problems with WD SN580 1TB and SN770 1TB NVME M.2 drives stopping or faulting causing degraded zpools. Needed to update firmware follow guide below:- Tried windows WD update (WD-Dashboard) utils but they did not work for me!!!!!
https://community.frame.work/t/western-digital-drive-update-guide-without-windows-wd-dashboard/20616
