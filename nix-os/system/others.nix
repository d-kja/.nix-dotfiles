{ pkgs, ... }:

{
  # CUPS to print documents
  services.printing.enable = false;

  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    (
      nerdfonts.override {
        fonts = [ "FiraCode" ]; 
      }
    )
  ];

  # SUID Wrappers
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
