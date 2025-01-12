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

      # Function to factorise all NixOS config
      makeNixosConfig = host: nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system;
        };
        modules = [
          /etc/nixos/hardware-configuration.nix
          ./hosts/${host}/configuration.nix
          ./modules/packages.nix
          ./modules/users.nix
        ];
      };
    in {
      nixosConfigurations = {
        rogue = makeNixosConfig "rogue";
        berzerker = makeNixosConfig "berzerker";
      };
    };
}
