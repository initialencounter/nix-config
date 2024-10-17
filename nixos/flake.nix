{
  description = "ie's NixOS Configuration";
  inputs = {
    # os
    nixpkgs.url = "git+https://mirrors.tuna.tsinghua.edu.cn/git/nixpkgs.git/?ref=nixos-unstable";
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    vscode-server.url = "github:nix-community/nixos-vscode-server";
    alacritty-theme.url = "github:alexghr/alacritty-theme.nix";
    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = all@{ nixpkgs, vscode-server, home-manager, alacritty-theme, sops-nix, ... }:
  {
    nixosConfigurations.ie = nixpkgs.lib.nixosSystem {
      modules = [
        ({ config, pkgs, ...}: {
          # install the overlay
          nixpkgs.overlays = [ alacritty-theme.overlays.default ];
        })
        sops-nix.nixosModules.sops
        ./configuration.nix
        ./services.nix
        ./users.nix
        ./environment.nix
        ./programs/clash-verge-rev.nix
         vscode-server.nixosModules.default
        ./programs/vscode-server.nix
        # 将 home-manager 配置为 nixos 的一个 module
        # 这样在 nixos-rebuild switch 时，home-manager 配置也会被自动部署
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.ie = import ./home/home.nix;

          # 取消注释下面这一行，就可以在 home.nix 中使用 flake 的所有 inputs 参数了
          # home-manager.extraSpecialArgs = inputs;
        }
      ];
    };
  };
}
