{ pkgs,... }:

{
  environment.systemPackages = with pkgs; [
    bash
    bat
    btop
    chromium
    curl
    direnv
    fastfetch
    fd
    firefox
    firefox-devedition
    fish
    fzf
    google-chrome
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

