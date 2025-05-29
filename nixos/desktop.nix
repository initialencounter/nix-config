{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "cn";
    variant = "";
  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "ie";
}