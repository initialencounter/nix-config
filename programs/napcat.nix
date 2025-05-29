{ pkgs, ... }:

let 
  defaultConfig = {
    qq_config_dir = "/root/bot/ie/napcat/qq";
    nc_config_dir = "/root/bot/ie/napcat/config";
  };
  napcat = pkgs.napcat.buildNapcat defaultConfig;
in

{
  systemd.services.napcat = {
    enable = true;
    description = "Napcat Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${napcat.script}/bin/NapCat";
      Restart = "always";
      User = "root";  # 替换为你的用户名
    };
  };
}
