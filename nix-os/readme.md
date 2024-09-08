# NixOS

Bare bones configuration file, for simple initial setup. There's nothing special like themes and all that crap
<br/><br/>

## Steps

### Generate or move your `hardware-configuration` file

You can either generate a new one with the [docs](https://nixos.wiki/wiki/Nixos-generate-config) or you can just move your existing one.

```
mv /etc/nixos/hardware-configuration.nix $HOME/.config/nix/system/hardware-configuration.nix
```
<br/>

### Create a `flake.lock` file

Inside the nix folder, you run the following to create a `.lock` file

```nix
nix flake lock
```
<br/>

### Build the flake

Remember to replace the #dkja with the key being used in the nixConfigurations

```nix
sudo nixos-rebuild switch --flake .#dkja
```
<br/>

Configure NVIDIA drivers, references: 

- Hyprland: (docs)[https://wiki.hyprland.org/Nvidia]
- NixOS: (docs)[https://nixos.wiki/wiki/Nvidia]
