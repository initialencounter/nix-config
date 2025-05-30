{pkgs, ...}: {
  systemd.services.koishi = {
    enable = true;
    description = "Koishi Service";
    after = ["network.target"];
    wantedBy = ["multi-user.target"];
    serviceConfig = {
      ExecStart = "${pkgs.yarn}/bin/yarn start";
      RestartSec = 5;
      Restart = "always";
      User = "root";
      WorkingDirectory = "/root/bot/ie/ks";
      Environment = "NODE_ENV=production";
    };
  };

  systemd.services.zhenxun = {
    enable = true;
    description = "Koishi-zhenxun Service";
    after = ["network.target"];
    wantedBy = ["multi-user.target"];
    serviceConfig = {
      ExecStart = "${pkgs.yarn}/bin/yarn start";
      RestartSec = 5;
      Restart = "always";
      User = "root";
      WorkingDirectory = "/root/bot/zhenxun/koishi";
      Environment = "NODE_ENV=production";
    };
  };
}
