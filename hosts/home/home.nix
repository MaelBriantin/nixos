{ config, pkgs, ... }:

{
  home.username = "mael";
  home.homeDirectory = "/home/mael";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  home.packages = [
    # Gaming
    pkgs.discord
    pkgs.lutris
    pkgs.steam
  ];

  programs.git =
  {
    enable = true;
    userEmail = "mael.briantin@proton.me";
    userName = "MaelBriantin";
    aliases =
    {
      st = "status";
      co = "checkout";
      cb = "checkout -b";
      sw = "switch";
      sc = "switch -c";
      ap = "add --patch";
      aa = "add --all";
      ca = "commit --amend";
      cm = "commit -m";
      lg = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      ps = "push";
      pl = "pull";
      me = "merge";
      cl = "clone";
      df = "diff";
      br = "branch";
      ta = "tag";
      sh = "show";
      rb = "rebase";
      rs = "reset";
      cp = "cherry-pick";
    };
    ignores = [ ".gitignore" ".vscode" ".idea" ];
  };

  programs.neovim = {
    enable = true;
  };

  home.file.".config/nvim".source = ../../dotfiles/nvim; 
  
  home.file.".config/ghostty".source = ../../dotfiles/ghostty; 

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
