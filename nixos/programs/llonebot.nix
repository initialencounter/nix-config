{ pkgs, config, ... }:

let 
  llonebotConfig = {
    vncport = 7081;
    vncpassword = "mysecurepassword";
  };
  llonebotLib = config._module.args.inputs.llonebot.lib.x86_64-linux;
  myLLOneBot = (llonebotLib.buildLLOneBot llonebotConfig).script;
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