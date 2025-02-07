{ config, pkgs, ... }:

{
  systemd.services.napcat = {
    enable = true;
    description = "Napcat Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.nix}/bin/nix run github:initialencounter/napcat.nix";
      Restart = "always";
      User = "root";  # 替换为你的用户名
    };
  };
}
