{ ... }:
{
  imports = [(import ./config.nix)]
	  ++[(import ./hyprland.nix)];
}
