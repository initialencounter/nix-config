{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.nodejs
    pkgs.yarn
    pkgs.pnpm
    pkgs.nodePackages.npm
  ];
}
