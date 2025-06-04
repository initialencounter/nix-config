# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
{
  networking = {
    hostName = "ie";
    proxy = {
      default = "http://127.0.0.1:7890";
      noProxy = "127.0.0.1,localhost,internal.domain";
    };
  };

  networking.firewall = {
    # koishi napcat
    allowedTCPPorts = [
      5140
      5141
      6099
      6199
      3001
      3000
      3100
      3101
    ];
    allowedUDPPorts = [
      5140
      5141
      6099
      6199
      3001
      3000
      3100
      3101
    ];
  };

  networking.networkmanager.enable = true;
}
