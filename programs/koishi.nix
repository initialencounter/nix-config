{ pkgs, ... }:
{
  systemd.services.koishi = {
    serviceConfig = {
      ExecStart = "${pkgs.yarn}/bin/yarn start";
      RestartSec = 5;
      Restart = "always";
      User = "ie";
      WorkingDirectory = "/home/ie/bot/ks";
      Environment = "NODE_ENV=production";
    };
  };
}