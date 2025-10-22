{ pkgs, ... }:
{
  # Enable the GNOME Desktop Environment with Wayland
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.displayManager.gdm.wayland = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.autoSuspend = false;

  environment.systemPackages =
    (with pkgs; [
      # Removed wofi (Hyprland-specific) and xdg-desktop-portal-hyprland
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

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "ie";
}
