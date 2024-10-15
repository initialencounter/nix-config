# ./programs/vscode-server.nix
{ config, pkgs, inputs, ... }:

{
  services.vscode-server.enable = true;
}