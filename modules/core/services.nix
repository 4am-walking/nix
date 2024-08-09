{ pkgs, ... }:
{
  services.mullvad-vpn.enable = true;
  security.pam.services.swaylock = {};
}
