{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    btop
    chromium
    curl
    docker
    docker-compose
    fd
    fish
    fishPlugins.fzf
    fzf
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

