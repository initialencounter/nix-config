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
    ];
    environment.variables.EDITOR = "code";
}
