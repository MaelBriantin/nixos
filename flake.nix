{
  description = "my nixos config for all programming dungeons";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      makeNixosConfig = host: extraModules: nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system;
        };
        # Common modules
        modules = [
          /etc/nixos/hardware-configuration.nix
          ./hosts/${host}/configuration.nix
          ./modules/users.nix
          ./modules/packages/core.nix
          ./modules/packages/fonts.nix
        ] ++ extraModules;
      };
    in {
      nixosConfigurations = {
        rogue = makeNixosConfig "rogue" [
          # Extra modules for rogue
          ./modules/packages/programming.nix
        ];

        berzerker = makeNixosConfig "berzerker" [
          # Extra modules for berzerker
        ];
      };
    };
}
