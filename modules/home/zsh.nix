{ hostname, config, pkgs, host, ...}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    envExtra = "export EDITOR='nvim'";
    initExtraFirst = "fastfetch";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake /home/xp/.dots#desktop";
      cat = "bat";
      vim = "nvim";
      nix-packages = "vim /home/xp/.dots/modules/home/packages.nix";
      nix-zsh = "vim /home/xp/.dots/modules/home/zsh.nix";

    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
}
