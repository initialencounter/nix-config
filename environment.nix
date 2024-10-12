{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        unzip
        wget
        curl
        firefox
        microsoft-edge
        chromium
        vim
        git
        vscode
        clash-verge-rev
    ];
    environment.variables.EDITOR = "code";
}
