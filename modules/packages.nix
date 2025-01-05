{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    neovim
    wget
    curl
    git
    chromium
    docker
    docker-compose
    vscode
    fish
    fzf
    fd
    bat
    gnumake
    gcc
    gnome-keyring
    libsecret
    libgnome-keyring
    xdg-utils
    gh
    mkcert
    starship
    fastfetch
    btop
    lazygit
    lazydocker
    openssl
    lua
    luarocks
    nodejs
    ripgrep
    unzip
    xclip
    home-manager
    ghostty
  ];
}

