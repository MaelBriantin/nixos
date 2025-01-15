{ config, pkgs, lib, ... }:

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
    firefox
    firefox-devedition
    fish
    fzf
    gnome-keyring
    libgnome-keyring
    libsecret
    mkcert
    openssl
    ripgrep
    starship
    thunderbird
    unzip
    xclip
    xdg-utils
    zsh
  ];
}

