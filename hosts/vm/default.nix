{ pkgs, config, lib, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./bootloader.nix
    ./../../modules/core
  ];
}
