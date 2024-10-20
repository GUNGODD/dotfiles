{
  description = "Ascenzen's Flake";  # --> stable 
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05"; 
    home-manager.url = "github:nix-community/home-manager/release-23.05";
    # This will ensure that both home manager and nixpkgs are referenced to the same package. Let's move into the output block. :) 
  };

  # You can change it with the version you are using such as stable, unstable, or specify the version.
  outputs = { self, config, nixpkgs, home-manager, ... }:
  let 
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [./configuration.nix];
        
      };
    };

    homeConfigurations = {
      # As we know, it's home-manager config, which means it's not system-specific but rather user-specific.
      ascenzen = home-manager.lib.homeManagerConfiguration {
        # Whatever environment variable contains it will be passed down here.
        inherit pkgs;

        
        modules = [./home.nix];
        
      };
    };
  };
}
