{ config, pkgs, lib, ... }:

let
  nodejs = pkgs.nodejs;
in {
  # 配置 Systemd 服务
  systemd.user.services.koishi = {
    Service = {
      # 服务在后台运行
      ExecStart = "${pkgs.yarn}/bin/yarn start";
      Restart = "always";
      RestartSec = 5;
      WorkingDirectory = "/home/ie/bot/ks";
      Environment = "NODE_ENV=production";
    };
  };
}
