{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Shells and shell prompt tools
    bash  
    fish  
    starship  
    zsh  

    # Text editors and IDEs
    neovim  
    vim  
    vscode  

    # Browsers
    chromium  
    firefox-devedition

    # Window managers and desktop environments
    gnome-keyring  
    libgnome-keyring  
    libsecret  

    # Version control and Git tools
    gh
    git  
    lazygit  

    # Network tools
    curl  
    wget  

    # Docker and related tools
    docker  
    docker-compose  
    lazydocker  

    # Languages and package managers
    gcc  
    lua  
    luarocks  
    nodejs  

    # CLI tools and utilities
    bat  
    fd  
    fzf  
    ripgrep  
    unzip  
    xdg-utils  
    xclip  

    # Certificate and configuration managers
    home-manager  
    mkcert  
    openssl  

    # Monitoring and diagnostics tools
    btop  
    fastfetch  

    # Third-party and specific tools
    ghostty  
    thunderbird  
  ];
}

