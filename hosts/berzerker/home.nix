{ config, pkgs, ... }:

{
  home.username = "mael";
  home.homedirectory = "/home/mael";

  home.stateversion = "24.11"; # please read the comment before changing.

  nixpkgs.config.allowunfree = true;

  home.packages = [
    pkgs.discord
    pkgs.lutris
    pkgs.steam
  ];

  programs.git =
  {
    enable = true;
    useremail = "mael.briantin@proton.me";
    username = "maelbriantin";
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
      lg = "log --graph --pretty=format:'%cred%h%creset -%c(yellow)%d%creset %s %cgreen(%cr) %c(bold blue)<%an>%creset' --abbrev-commit";
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

  programs.fish = {
    enable = true;
  };

  home.file.".config/nvim".source = ../../dotfiles/nvim; 
  
  home.file.".config/ghostty".source = ../../dotfiles/ghostty; 

  home.file = {
  };

  home.sessionvariables = {
    editor = "nvim";
  };

  programs.home-manager.enable = true;
}
