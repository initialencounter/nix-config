{pkgs, ...}: {
  environment.systemPackages = [
    pkgs.nodejs
    pkgs.yarn
    pkgs.nodePackages.npm
  ];
}
