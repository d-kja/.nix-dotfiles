{ inputs, config, pkgs, ... }:

{
  imports =
    [
      ./desktop.nix
      ./network.nix
      ./audio.nix
      ./others.nix
    ];

  environment.sessionVariables = {
    # WLR_NO_HARDWARE_CURSOR = "1";
    NIXOS_OZONE_WL = "1";
  };

  # Profile
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; 

  programs = {
    firefox.enable = true;
  };

  ## System
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    opengl.enable = true;

    nvidia = {
      open = true;
      nvidiaSettings = true;

      modesetting.enable = true;

      powerManagement = {
        enable = true;
        finegrained = false;
      };

      # if finegrained is enabled the following needs to be enabled as well
      # prime = {
      #   offload = {
      #   enable = true;
      #   enableOffloadCmd = true;
      # };
      #
      # intelBusId = "...";
      # nvidiaBusId = "...";
      # };

      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };

  ## User
  users.users.dkja = {
    isNormalUser = true;
    description = "dkja";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Before changing this value read the documentation for this option
  # (man configuration.nix or on https://nixos.org/nixos/options.html)
  system.stateVersion = "24.05";
}
