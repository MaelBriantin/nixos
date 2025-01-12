# Installation guide

## Switch to the unstable channel on NixOS

In order to use all the packages listed in `modules/packages.nix`, like `ghostty`, 
it is necessary to switch to the unstable channel.

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

### Or run the commands in one line

```bash
sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos && 
sudo nix-channel --update && 
sudo nixos-rebuild switch --upgrade
```

## Installation

### Pick your class

There is multiple configurations, each ones with some specific trick.

- **berzerker** for my personal gaming rig (Ryzen 5 7600 / Radeon 7900 GRE / 32 Go DDR5)
- **rogue** for my dev laptop (Thinkpad X13 Gen 5 / Intel)
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
