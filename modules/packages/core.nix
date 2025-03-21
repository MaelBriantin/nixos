{ pkgs,... }:

{
  environment.systemPackages = with pkgs; [
    bash
    bat
    btop
    chromium
    curl
    fastfetch
    fd
    firefox-devedition
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

