{ pkgs, ... }:
{
  systemd.services.pvp = {
    enable = true;
    description = "Tapsss Auto PVP Bot Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.uv}/bin/uv run run.py";
      RestartSec = 5;
      Restart = "always";
      User = "root";
      WorkingDirectory = "/root/bot/mswar-bot-autopvp";
    };
  };

  systemd.services.pvp2 = {
    enable = true;
    description = "Tapsss Auto PVP Bot2 Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.uv}/bin/uv run run.py";
      RestartSec = 5;
      Restart = "always";
      User = "root";
      WorkingDirectory = "/root/bot/pvp2";
    };
  };
}
