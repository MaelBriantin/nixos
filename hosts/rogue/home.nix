# Home Manager configuration for Rogue profile
{ config, pkgs, inputs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "mael";
  home.homeDirectory = "/home/mael";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  # Observe `dconf watch /` for a list of user settings that can be configured.
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      accent-colors = "slate";
      enable-hot-corner = false;
    };
    "org/gnome/desktop/background" = {
      picture-uri = "file:///${config.home.homeDirectory}/nixos/wallpapers/nixos.png";
      picture-uri-dark = "file:///${config.home.homeDirectory}/nixos/wallpapers/nixos.png";
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      screensaver = ["<Super>Return"];
    };
    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 4;
    };
    "org/gnome/desktop/wm/keybindings" = {
      switch-to-workspace-right = ["<Super>l"];
      switch-to-workspace-left = ["<Super>h"];
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      switch-to-workspace-5 = ["<Super>5"];
      switch-to-workspace-6 = ["<Super>6"];
      move-to-workspace-right = ["<Shift><Super>l"];
      move-to-workspace-left = ["<Shift><Super>h"];
      move-to-workspace-1 = ["<Shift><Super>1"];
      move-to-workspace-2 = ["<Shift><Super>2"];
      move-to-workspace-3 = ["<Shift><Super>3"];
      move-to-workspace-4 = ["<Shift><Super>4"];
      switch-to-application-1 = "unset";
      switch-to-application-2 = "unset";
      switch-to-application-3 = "unset";
      switch-to-application-4 = "unset";
    };
    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 0;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 0;
      sleep-inactive-battery-type = "nothing";
    };
    "org/gnome/desktop/sound" = {
      event-sounds = false;
    };
    "org/gnome/shell" = {
      favorite-apps = [
        "com.mitchellh.ghostty.desktop"
        "code.desktop"
        "chromium-browser.desktop"
        "org.gnome.Nautilus.desktop"
      ];
      disable-user-extensions = false;
      enabled-extensions = [
        "tactile@lundal.io"
        "switcher@landau.fi"
        "space-bar@luchrioh"
      ];
    };
  };

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.gnomeExtensions.tactile
    pkgs.gnomeExtensions.space-bar
    pkgs.gnomeExtensions.switcher
  ];

  nixpkgs.config.allowUnfree = true;

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
    ignores = [ ".vscode" ".idea" ".phpactor.json" ];
    extraConfig = {
      push = { autoSetupRemote = true; };
    };
  };

  programs.neovim = {
    enable = true;
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    ".config/nvim".source = ../../dotfiles/nvim;
    ".config/ghostty".source = ../../dotfiles/ghostty;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
