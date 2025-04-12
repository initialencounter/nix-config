{ config, pkgs, ... }:

let 
  myNapCat = config._module.args.inputs.napcat.packages.x86_64-linux.default;
in

{
  systemd.services.napcat = {
    enable = true;
    description = "Napcat Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = "${myNapCat}/bin/napcat";
      Restart = "always";
      User = "root";  # 替换为你的用户名
    };
  };
}
