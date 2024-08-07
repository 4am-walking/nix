{inputs, nixpkgs, self, username, hosts, ...}:
{
  imports = 
     [ (import ./configuration.nix) ]
   ++[ (import ./network.nix) ]
   ++[ (import ./hardware.nix) ]
   ++[ (import ./user.nix) ]
   ++[ (import ./program.nix) ];
}
