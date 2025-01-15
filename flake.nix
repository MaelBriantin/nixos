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
    in {
      nixosConfigurations = {
        rogue = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system;
          };
          modules = [
            /etc/nixos/hardware-configuration.nix
            ./hosts/rogue/configuration.nix
            ./modules/users.nix
            ./modules/packages/core.nix
            ./modules/packages/fonts.nix
            ./modules/packages/programming.nix
          ];
        };
        berzerker = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system;
          };
          modules = [
            /etc/nixos/hardware-configuration.nix
            ./hosts/berzerker/configuration.nix
            ./modules/users.nix
            ./modules/packages/core.nix
            ./modules/packages/fonts.nix
          ];
        };
      };
    };
}
