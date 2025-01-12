{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mael";
  home.homeDirectory = "/home/mael";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
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

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      starship init fish | source
      set -u fish_user_paths $home/.nix-profile/bin $fish_user_paths
      export path="/home/mael/.config/herd-lite/bin:$path"
      alias dc="docker compose"
    '';
    plugins = [
      { name = "fzf"; src = pkgs.fishPlugins.fzf; }
    ];
  };

  home.file.".config/nvim".source = ../../dotfiles/nvim; 
  
  home.file.".config/ghostty".source = ../../dotfiles/ghostty; 

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
