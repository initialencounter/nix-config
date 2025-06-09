{ pkgs, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = false;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages =
    (with pkgs; [
      wofi
      xdg-desktop-portal-hyprland
      gnome-tweaks
      gnome-themes-extra
      papirus-icon-theme
    ])
    ++ (with pkgs.gnomeExtensions; [
      appindicator
      blur-my-shell
      burn-my-windows
      compiz-alike-magic-lamp-effect
      compiz-windows-effect
      coverflow-alt-tab
      dash-to-dock
      fuzzy-app-search
      hide-top-bar
      just-perfection
      removable-drive-menu
      user-themes
      night-theme-switcher
      kimpanel
    ]);

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "cn";
    variant = "";
  };

  # Enable automatic login for the user.
  # services.displayManager.autoLogin.enable = true;
  # services.displayManager.autoLogin.user = "ie";
}
