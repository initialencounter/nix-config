## Components

|                             | NixOS(Wayland)                                                                                                      |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Window Manager**          | [Hyprland][Hyprland]                                                                                                |
| **Bar**                     | [Waybar][Waybar]                                                                                                    |
| **Display Manager**         | [SDDM][SDDM]                                                                                                          |
| **network management tool** | [NetworkManager][NetworkManager]                                                                                    |
| **Input method framework**  | [Fcitx5][Fcitx5]                                                                                                    |
| **Shell**                   | [Fish][Fish]                                                                          |
| **Media Player**            | [mpv][mpv]                                                                                                          |
| **Image Viewer**            | [imv][imv]                                                                                                          |

## Installing

```shell
git clone https://github.com/initialencounter/nix-config --depth=1
cp -r nix-config/nixos /etc/nixos/
nixos-rebuild
reboot
```