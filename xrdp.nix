{ pkgs, ... }:
{
  # https://discourse.nixos.org/t/configuring-remote-desktop-access-with-gnome-remote-desktop/48023/4
  services.xrdp.enable = true;
  services.xrdp.defaultWindowManager = "${pkgs.gnome-session}/bin/gnome-session";
  services.xrdp.openFirewall = true;

  # Disable the GNOME3/GDM auto-suspend feature that cannot be disabled in GUI!
  # If no user is logged in, the machine will power down after 20 minutes.
  systemd.targets.sleep.enable = false;
  systemd.targets.suspend.enable = false;
  systemd.targets.hibernate.enable = false;
  systemd.targets.hybrid-sleep.enable = false;

  environment.systemPackages = with pkgs; [
    gnome-remote-desktop
  ];

  services.gnome.gnome-remote-desktop.enable = true;

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 3389 ];
    allowedUDPPorts = [ 3389 ];
  };
}
