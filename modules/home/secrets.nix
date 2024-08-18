{ pkgs, inputs, config, ... }:
{
  imports =
  [
    inputs.sops-nix.homeManagerModules.sops
  ];

  sops.defaultSopsFile = ../../secrets/secrets.yaml;
  sops.defaultSopsFormat = "yaml";

  sops.age.keyFile = "/home/xp/.config/sops/age/keys.txt";

  sops.secrets.music_username = { };
  sops.secrets.music_password = { };
}
