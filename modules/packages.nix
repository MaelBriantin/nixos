{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bash
    bat
    btop
    chromium
    curl
    docker
    docker-compose
    fd
    firefox-devedition
    fish
    fishPlugins.fzf
    fzf
    gcc
    ghostty
    git
    gh
    gnome-keyring
    gnumake
    home-manager
    lazydocker
    lazygit
    libgnome-keyring
    libsecret
    lua
    luarocks
    mesa
    mkcert
    neovim
    nodejs
    openssl
    ripgrep
    starship
    thunderbird
    unzip
    vim
    vscode
    wget
    xclip
    xdg-utils
    zsh
  ];
}

