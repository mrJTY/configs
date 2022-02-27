mkfs.ext4 -L nixos /dev/sda1
mkswap -L swap /dev/sda2

# For uefi boot
mkfs.fat -F 32 -n boot /dev/sda3
