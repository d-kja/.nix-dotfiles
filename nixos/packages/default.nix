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
    vim
    wget
    curl
    unzip
    zip
    jq

    alacritty
    kitty
    fastfetch
    starship 

    eww
    swww
    waybar # (waybar.overrideAttrs (oldAttrs: { mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ]; }))
    dunst
    rofi-wayland
    networkmanagerapplet
    wl-clipboard
    slurp
    grim

    #dbus
    #basu
    meson
    gtk4
    gtk3
    gtk3-x11
    gdk-pixbuf
    xorg.libxcb
    egl-wayland
    glfw-wayland
    libva
    xdg-utils
    libnotify
    freefont_ttf
    linuxHeaders
    qt5.qtwayland 
    libsForQt5.qt5ct
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtquickcontrols
    qt6.qtwayland
    kdePackages.qt6ct
    kdePackages.kirigami-addons
    kdePackages.kscreen
    kdePackages.knewstuff
    polkit_gnome
    #gnome.nautilus

    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
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
      discord
    ];
  };
}
