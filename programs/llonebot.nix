{ pkgs, ... }:
let
  llonebotConfig = {
    quick_login_qq = "3111720341";
    sandbox_root_dir = "/root/bot/zhenxun/llonebot/root";
  };
  myLLOneBotSandbox = (pkgs.llonebot.buildLLOneBotSandbox llonebotConfig).sandbox;
in
{
  systemd.services.llonebot = {
    enable = true;
    description = "LLOneBot Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${myLLOneBotSandbox}/bin/sandbox";
      Restart = "always";
      User = "root";
    };
  };
}
