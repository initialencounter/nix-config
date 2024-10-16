{ pkgs, ... }:
{
  # 桌面
  services.xserver.desktopManager.gnome.enable = true;
  services.displayManager= {
    sddm = {
      wayland = {
        enable = true;
        compositor = "kwin";
      };
    };
    defaultSession = "gnome";  # hyprland | gnome | gnome-xorg
  };
  
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
  ];

  # polkit-gnome 用于让桌面应用获取 sudo 权限
  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };

  qt = {
    enable = true;
    # platformTheme = "qt5ct";
    style = "breeze";
  };
}
