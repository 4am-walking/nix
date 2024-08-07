{ pkgs, inputs, ... }:
{
  imports = 
  [
    inputs.minegrub-world-sel-theme.nixosModules.default
  ];
  boot.loader = {
    grub = {
      enable = true;
      device = "/dev/sda";
      minegrub-world-sel = {
        enable = true;
	customIcons = [{
	  name = "nixos";
	  lineTop = "NixOS (2024)";
	  lineBottom = "Survival Mode, No Cheats, Version 24.11";
	  imgName = "nixos";
        }];
      };
    };
  };
}
