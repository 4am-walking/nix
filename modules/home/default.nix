{inputs, username, host, ... }: {
  imports =
    [(import ./zsh.nix)]
 ++ [(import ./nvim.nix)]
 ++ [(import ./bat.nix)];
}
