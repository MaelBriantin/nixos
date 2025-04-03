{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    dbeaver-bin
    deno
    docker
    docker-compose
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
    php84
    php84Packages.composer
    phpactor
    pnpm
    symfony-cli
    typescript-language-server
    vscode
    vscode-langservers-extracted
    wget
    zsh
  ];
}

