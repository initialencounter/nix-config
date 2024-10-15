{lib, ...}:
{
  # swith to plasma
  # programs.ssh.askPassword = lib.mkForce "/nix/store/65x690xfpm5va91gnh74zkqf7fir4y4b-ksshaskpass-6.1.5/bin/ksshaskpass";
  # services.desktopManager.plasma6.enable = true;
  programs.dconf.enable = true;
  programs.kdeconnect.enable = true;
}