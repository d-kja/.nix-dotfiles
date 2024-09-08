{
  description = "Default configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
  };

  outputs = args@{ self, nixpkgs, ... }: with nixpkgs; {
    nixosConfigurations.dkja = lib.nixosSystem {
      specialArgs = { inherit inputs; };

      system = "x06_64-linux";

      modules = [
        ./system/default.nix
        ./packages/default.nix
      ];
    };
  };
}
