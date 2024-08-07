{ pkgs, inputs, ... }:
{
  imports =
  [
    inputs.nixvim.homeManagerModules.nixvim
  ];
  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;
    options = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };
  };
}
