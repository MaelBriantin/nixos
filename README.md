# Switching to the Unstable Channel on NixOS

## Switch to the unstable channel on NixOS

1. **Check the current channels**:

    ```bash
    sudo nix-channel --list
    ```

2. **Add the nixos-unstable channel**:

    ```bash
    sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos
    ```

3. **Update the channels**:

    ```bash
    sudo nix-channel --update
    ```

4. **Rebuild the system**:

    ```bash
    sudo nixos-rebuild switch
    ```

5. **Upgrade your system**:

    ```bash
    sudo nixos-rebuild switch --upgrade
    ```

**Note**:

Make sure to carefully test the unstable channel, as it may contain less stable software. 
Consider backing up your system before proceeding.

### Or run the commands in one line

```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos && 
sudo nix-channel --update && 
sudo nixos-rebuild switch --upgrade
```

## Installation

### Pick your class

There is multiple configurations, each ones with some specific trick.

- **rogue** for my dev laptop.
- **berzerker** for my personal gaming rig.
<!--- **wizard** for my personal server.-->

### Run the build command

Go to the directory where you have cloned this repository and run:

```bash
sudo nixos-rebuild switch --flake ./#<selected-class> --impure
```

For example, for the laptop config, run:

```bash
sudo nixos-rebuild switch --flake ./#rogue --impure
```

Reboot the system and all should be done.
