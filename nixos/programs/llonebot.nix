{ pkgs, config, ... }:

let 
  myLLOneBot = config._module.args.inputs.llonebot.packages.x86_64-linux.default;
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