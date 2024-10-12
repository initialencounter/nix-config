{
  description = "ie's NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      vscode-server.url = "github:nix-community/nixos-vscode-server";
  };

  outputs = { nixpkgs, vscode-server, ... } @ inputs:
  {
    nixosConfigurations.ie = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [         
        ./configuration.nix
        ./services.nix
        ./users.nix
        ./environment.nix
        ./programs/fcitx5.nix
        ./programs/clash-verge-rev.nix
         vscode-server.nixosModules.default
        ./programs/vscode-server.nix
      ];
    };
  };
}
