{ pkgs,... }:

{
  environment.systemPackages = with pkgs; [
    bash
    bat
    btop
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
    ungoogled-chromium
    unzip
    xclip
    xdg-utils
  ];
}

