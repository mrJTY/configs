# Do this when you only see grub cli

# find out the device
ls

# Just an example
set root=(hd01,dev1)

linux=(hd01,dev)/...vlinuz..

initrd=(hd01,dev..)/...initrd

boot


# Then once inside, and if you don't have a terminal
CTRL-ALT-F1

login

startx
