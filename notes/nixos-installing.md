# Partitioning

```shell
parted /dev/nvme0n1 -- mklabel gpt
parted /dev/nvme0n1 -- mkpart root ext4 512MB -48GB  # 1.5 * memory
parted /dev/nvme0n1 -- mkpart swap linux-swap -48GB 100%
parted /dev/nvme0n1 -- mkpart ESP fat32 1MB 512MB
parted /dev/nvme0n1 -- set 3 esp on
```

# Formatting

```shell
mkfs.ext4 -L nixos /dev/nvme0n1p1
mkswap -L swap /dev/nvme0n1p2
mkfs.fat -F 32 -n boot /dev/nvme0n1p3
```

# Installing

```shell
mount /dev/disk/by-label/nixos /mnt
mkdir -p /mnt/boot
mount -o umask=077 /dev/disk/by-label/boot /mnt/boot
swapon /dev/nvme0n1p2
```

# Config Proxy

```shell
export https_proxy=http://192.168.3.11:7890 && export http_proxy=http://192.168.3.11:7890
```

# Config

```shell
nixos-generate-config --root /mnt
```

# Install

```shell
nixos-install --option substituters "https://mirror.sjtu.edu.cn/nix-channels/store"
```