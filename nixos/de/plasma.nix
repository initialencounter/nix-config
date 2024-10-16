{lib, ...}:
{
  services.desktopManager.plasma6.enable = true;
  services.displayManager = {
    defaultSession = "plasmax11";  # Plasma (X11)
  };
  programs.dconf.enable = true;
  programs.kdeconnect.enable = true;
}