{ pkgs, ... }:

{
  systemd.services.napcat = {
    enable = true;
    description = "Napcat Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.napcat.default}/bin/napcat";
      Restart = "always";
      User = "root";  # 替换为你的用户名
    };
  };
}
