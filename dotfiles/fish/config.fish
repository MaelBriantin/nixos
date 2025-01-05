if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    starship init fish | source
    set -U fish_user_paths $HOME/.nix-profile/bin $fish_user_paths
    export PATH="/home/mael/.config/herd-lite/bin:$PATH"
    # create an alias for docker compose
    alias dc="docker compose"
end
