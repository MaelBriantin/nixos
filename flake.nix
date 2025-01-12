{
  description = "home manager configuration of mael";

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
        config = {
          allowUnfree = true;
        };
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
            ./modules/packages.nix
            ./modules/users.nix
          ];
        };
        berzerker = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system;
          };
          modules = [
	    /etc/nixos/hardware-configuration.nix
            ./hosts/berzerker/configuration.nix
            ./modules/packages.nix
            ./modules/users.nix
          ];
        };
      };
    };
}
