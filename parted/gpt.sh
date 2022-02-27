# Example of how to use parted to partition disks with cli
# https://nixos.org/manual/nixos/stable/index.html#sec-installation

# List drives
fdisk -l

# Create a GPT
parted /dev/sda -- mklabel gpt

# Create primary
parted /dev/sda -- mkpart primary 512MiB 12GiB

# Create swap
parted /dev/sda -- mkpart primary 12GiB 100%

parted /dev/sda -- mkpart ESP fat32 1MiB 512MiB
parted /dev/sda -- set 3 esp on


