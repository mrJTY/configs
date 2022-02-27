# Use this for Vbox
parted /dev/sda -- mklabel msdos
parted /dev/sda -- mkpart primary 1MiB 12GiB
parted /dev/sda -- mkpart primary linux-swap 12GiB 100%
