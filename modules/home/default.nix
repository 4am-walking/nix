{inputs, username, host, ... }: {
  imports =
    [(import ./zsh.nix)]
 ++ [(import ./nvim.nix)]
 ++ [(import ./bat.nix)]
 ++ [(import ./git.nix)]
 ++ [(import ./packages.nix)]
 ++ [(import ./swaylock.nix)]
 ++ [(import ./waybar)]
 ++ [(import ./firefox.nix)]
 ++ [(import ./secrets.nix)];
}
