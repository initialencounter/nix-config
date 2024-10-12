{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        unzip
        wget
        curl
        firefox
        vim
        git
        vscode
        clash-verge-rev
    ];
    environment.variables.EDITOR = "code";
}
