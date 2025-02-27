{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
    docker
    docker-compose
    firefox-devedition
    gcc
    gh
    gnumake
    home-manager
    jq
    lazydocker
    lazygit
    lua
    lua-language-server
    luarocks
    markdownlint-cli
    marksman
    mkcert
    nixd
    nodejs
    openvpn
    openconnect
    pnpm
    typescript-language-server
    vscode
    vscode-langservers-extracted
    wget
    zsh
  ];
}

