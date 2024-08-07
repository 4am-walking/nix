{
  description = "4am-walking's config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
  let
    username = "xp";
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
    in
    {
      nixosConfigurations = {
	desktop = nixpkgs.lib.nixosSystem {
	  inherit system;
	  modules = [ (import ./hosts/desktop)];
	  specialArgs = { host = "desktop"; inherit self inputs username ; };
	};
        vm = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ (import ./hosts/vm) ];
          specialArgs = { host = "vm"; inherit self inputs username ; };
        };
      };
    };
}
