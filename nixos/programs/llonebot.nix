{ pkgs, ... }:

let 
  llonebotConfig = {
    vncport = 7081;
    vncpassword = "mysecurepassword";
    display=":666";
    novncport = 5900;
  };
  myLLOneBot = (pkgs.llonebot.buildLLOneBot llonebotConfig).script;
in

{
  systemd.services.llonebot = {
    enable = true;
    description = "LLOneBot Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${myLLOneBot}/bin/LLOneBot";
      Restart = "always";
      User = "root";
    };
  };
}