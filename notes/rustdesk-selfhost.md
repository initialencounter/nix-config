# client

## nix-config

```nix
# home.nix
{
  home.packages = with pkgs;[
    rustdesk-flutter
  ];
}
```

## autostart

```shell
vi ~/.config/autostart/rustdesk.desktop
```
写入内容
```conf
[Desktop Entry]
Type=Application
Version=1.0
Name=.rustdesk
Comment=.rustdesk script
Exec=env DISPLAY=:0 && /etc/profiles/per-user/ie/bin/rustdesk
StartupNotify=false
Terminal=false
```

# server

Get key
```shell
cat /var/lib/rustdesk/id_ed25519.pub
```

## nix-config
```nix
# configuration.nix
{
  services.rustdesk-server = {
    enable = true;
    openFirewall = true;
    relayIP = "192.168.3.5"; # 替换为你的局域网IP
  };
}
```
