{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    ghostty
    git
    gh
    gnumake
    home-manager
    lazydocker
    lazygit
    lua
    luarocks
    mesa
    neovim
    nodejs
    pnpm
    vscode
    wget
  ];
}

