{
  description = "Home Manager configuration of mael";

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
        dev = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system;
          };
          modules = [
            /home/mael/nixos/hosts/dev/configuration.nix
            /home/mael/nixos/modules/packages.nix
            /home/mael/nixos/modules/users.nix
          ];
        };
        home = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs system;
          };
          modules = [
            /home/mael/nixos/hosts/home/configuration.nix
            /home/mael/nixos/modules/packages.nix
            /home/mael/nixos/modules/users.nix
          ];
        };
      };
    };
}
