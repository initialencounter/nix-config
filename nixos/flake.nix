{
  description = "ie's NixOS Configuration";
  inputs = {
    # os
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    vscode-server.url = "github:nix-community/nixos-vscode-server";
    alacritty-theme.url = "github:alexghr/alacritty-theme.nix";
    sops-nix.url = "github:Mic92/sops-nix";
    llonebot = {
      url = "github:LLOneBot/llonebot.nix"; # nix flake lock --update-input llonebot
      inputs.nixpkgs.follows = "nixpkgs";
    };
    napcat = {
      url = "github:initialencounter/napcat.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    myRepo = {
      url = "github:initialencounter/nurpkgs";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    vscode-server,
    home-manager,
    alacritty-theme,
    sops-nix,
    ...
  }: {
    nixosConfigurations.ie = nixpkgs.lib.nixosSystem rec {
      system = "x86_64-linux";
      modules = [
        {
          # install the overlay
          nixpkgs.overlays = [alacritty-theme.overlays.default];
        }

        {
          nixpkgs.overlays = [
            (final: prev: {
              myRepo = inputs.myRepo.packages."${prev.system}";
              napcat = inputs.napcat.lib."${prev.system}";
              llonebot = inputs.llonebot.lib."${prev.system}";
            })
          ];
        }

        sops-nix.nixosModules.sops
        ./configuration.nix
        ./services.nix
        ./users.nix
        ./environment.nix
        ./fonts.nix
        vscode-server.nixosModules.default
        ./programs/vscode-server.nix
        # 将 home-manager 配置为 nixos 的一个 module
        # 这样在 nixos-rebuild switch 时，home-manager 配置也会被自动部署
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "bak";
          home-manager.users.ie = import ./home/home.nix;

          # 取消注释下面这一行，就可以在 home.nix 中使用 flake 的所有 inputs 参数了
          home-manager.extraSpecialArgs = inputs;
        }
      ];
    };
  };
}
