{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
    deno
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
    openconnect
    openvpn
    phpactor
    pnpm
    typescript-language-server
    vscode
    vscode-langservers-extracted
    wget
    zsh
  ];
}

