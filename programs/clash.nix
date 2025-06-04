{
  lib,
  pkgs,
  ...
}:
{
  systemd.services.clash = {
    description = "Clash a porxy tool";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      Type = "exec";
      User = "root";
      ExecStart = "${pkgs.mihomo}/bin/mihomo -d /root/clash";
      Restart = "always";
      WorkingDirectory = "/root/clash/";
    };
  };
}
