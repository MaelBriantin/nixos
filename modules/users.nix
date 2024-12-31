{ config, pkgs, ... }:

{
  users.users.mael = {
    isNormalUser = true;
    description = "Maël";
    packages = with pkgs; [
      fish
    ];
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };
}
