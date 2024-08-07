{ inputs, username, host, ... }:
{
  imports =
    [ (import ./default.nix) ]
  ++[ (import ./foot.nix) ];
}
