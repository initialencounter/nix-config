{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.python3
    pkgs.uv
  ];
}
