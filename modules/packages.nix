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
    htop
    lazygit
    lazydocker
    openssl
    stow
    lua
    luarocks
    nodejs
    ripgrep
    unzip
    tree-sitter
    xclip
    lua-language-server
  ];
}

