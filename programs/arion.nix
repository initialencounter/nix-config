{ pkgs, ... }: {
  environment.systemPackages = [
    pkgs.arion

     # Do install the docker CLI to talk to podman.
     # Not needed when virtualisation.docker.enable = true;
    pkgs.docker-client
  ];

  # Arion works with Docker, but for NixOS-based containers, you need Podman
  # since NixOS 21.05.
  virtualisation.docker.enable = false;
  virtualisation.podman.enable = true;
  virtualisation.podman.dockerSocket.enable = true;
  virtualisation.podman.defaultNetwork.settings.dns_enable = true;

  # Use your username instead of `myuser`
  users.extraUsers.ie.extraGroups = ["podman"];
}