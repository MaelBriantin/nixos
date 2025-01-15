{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    discord
    lutris
    steam
  ];
}

