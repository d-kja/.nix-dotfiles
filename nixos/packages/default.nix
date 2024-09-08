{ pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./collector.nix
  ];

  # IF KITTY IS STILL NOT WORKING
  # /etc/environment
  # KITTY_DISABLE_WAYLAND=0
  #
  # OR 
  #
  # WLR_NO_HARDWARE_CURSORS = "1" and WLR_RENDERER_ALLOW_SOFTWARE= "1";
  #
  # OR
  #
  # ADD tilix

  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    vim
    dunst
    gtk4
    gtk3
    gtk3-x11
    alacritty
    kitty
    libnotify
    eww
    swww
    xorg.libxcb
    rofi-wayland
    egl-wayland
    glfw-wayland
    waybar # (waybar.overrideAttrs (oldAttrs: { mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ]; }))
    fastfetch
    starship
    freefont_ttf
    networkmanagerapplet
    grim
    slurp
    wl-clipboard
    unzip
    zip
    discord
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
  };

  users.users.dkja = {
    packages = with pkgs; [
      kdePackages.kate
    ];
  };
}
