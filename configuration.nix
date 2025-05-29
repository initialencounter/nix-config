# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./i18n.nix
      ./nix.nix
      ./networking.nix
      ./desktop.nix
      ./programs/arion.nix
      ./programs/localsend.nix
      ./programs/yazi.nix
      ./programs/rustdesk-server.nix
      ./programs/thunar.nix
      ./programs/tailscale.nix
      ./programs/nodejs.nix
      ./programs/koishi.nix
      ./programs/napcat.nix
      ./programs/clash.nix
      # ./programs/llonebot.nix
      ./xrdp.nix
      ./samba.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      # sarasa-gothic  #更纱黑体
      source-code-pro
      hack-font
      jetbrains-mono
    ];
  };
  system.stateVersion = "24.05"; # Did you read the comment?

}
