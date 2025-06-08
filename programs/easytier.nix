{ config, pkgs, ... }:

let
  easytierSecrets = ../secrets/enc-easytier.yaml;
  mkSecret = name: {
    inherit name;
    value = {
      format = "yaml";
      sopsFile = easytierSecrets;
    };
  };
in
{
  sops = {
    age.keyFile = "/root/.config/sops/age/keys.txt";
    secrets = builtins.listToAttrs (
      map mkSecret [
        "ip"
        "peerUrl"
        "network"
        "secret"
      ]
    );
  };

  systemd.services.easytier = {
    enable = true;
    description = "Easytier Service";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];

    serviceConfig = {
      ExecStart = pkgs.writeShellScript "easytier-start" ''
        ${pkgs.easytier}/bin/easytier-core \
          -i "$(cat ${config.sops.secrets.ip.path})" \
          -p "$(cat ${config.sops.secrets.peerUrl.path})" \
          --network-name "$(cat ${config.sops.secrets.network.path})" \
          --network-secret "$(cat ${config.sops.secrets.secret.path})"
      '';

      RestartSec = 5;
      Restart = "always";

      # Security hardening
      User = "root";
      Group = "root";
    };
  };
}
