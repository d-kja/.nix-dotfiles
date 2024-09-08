{ ... }:

{
  # Desktop environment
  services.xserver.enable = false;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Launch KDE and SDDM in wayland
  services.displayManager.defaultSession = "plasma";
  services.displayManager.sddm.wayland.enable = true;

  # Keymap
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # services.displayManager.autoLogin.enable = false;
  # services.displayManager.autoLogin.user = "dkja";

  # qt = {
  #   enable = true;
  #   platformTheme = "gnome";
  #   style = "adwaita-dark";
  # };
  #
  # programs.dconf.enable = true;

  # Enable 3D
  # hardware.graphics.enable = true;
  # hardware.graphics.enable32Bit = true;
}
