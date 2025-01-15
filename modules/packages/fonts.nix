{ config, pkgs, lib, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.monaspace
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.hack
    nerd-fonts.commit-mono
  ];
}
