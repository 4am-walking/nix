{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "4am-walking";
    userEmail = "chanman0808@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };
}
