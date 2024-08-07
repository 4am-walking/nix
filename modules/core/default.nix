{inputs, nixpkgs, self, username, hosts, ...}:
{
  imports = 
     [ (import ./configuration.nix) ];
}
