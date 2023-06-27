{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dots = {
      url = "github:danielefongo/dots";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, home-manager, dots, ... } @attrs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        tower = lib.nixosSystem {
          inherit system pkgs;

          specialArgs = attrs;
          modules = [
            ./systems/tower
            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.extraSpecialArgs = attrs // { inherit system; };
            }
          ];
        };
      };
    };
}
