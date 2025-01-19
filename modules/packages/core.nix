{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    bash
    bat
    btop
    chromium
    curl
    deno
    fastfetch
    fd
    firefox
    fish
    fzf
    ghostty
    git
    gnome-keyring
    home-manager
    intelephense
    libgnome-keyring
    libsecret
    mesa
    neovim
    nitch
    openssl
    ripgrep
    starship
    unzip
    xclip
    xdg-utils
  ];
}

