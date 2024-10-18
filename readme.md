## Components

|                             | NixOS(Wayland)                                                                                                      |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Window Manager**          | [Hyprland][Hyprland]                                                                                                |
| **Terminal Emulator**       | [Alacritty][Alacritty]                                                                                              |
| **Bar**                     | [Waybar][Waybar]                                                                                                    |
| **Display Manager**         | [SDDM][SDDM]                                                                                                        |
| **network management tool** | [NetworkManager][NetworkManager]                                                                                    |
| **Input method framework**  | [Fcitx5][Fcitx5]                                                                                                    |
| **Shell**                   | [Fish][Fish] + [Starship][Starship]                                                                                 |
| **File Manager**            | [Yazi][Yazi] + [thunar][thunar]                                                                                     |
| **Media Player**            | [mpv][mpv]                                                                                                          |
| **Image Viewer**            | [imv][imv]                                                                                                          |

## Contact

QQ Group: 879031625

## Install

```shell
git clone https://github.com/initialencounter/nix-config --depth=1
cp -r nix-config/nixos /etc/nixos/
nixos-rebuild
reboot
```
