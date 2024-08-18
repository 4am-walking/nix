{ pkgs, ... }:
{
  home.packages = (with pkgs; [
    tree
    git
    fastfetch
    hyprpaper		# wallpaper
    htop
    btop
    yazi		# tui file manager
    fuzzel		# app search
    kitty		# terminal emulator
    wget
    mullvad-vpn
    discord
    audacious
    pamixer
    pavucontrol
    thunderbird

    # Screenshots
    grim
    swappy
    slurp
    
    # Mounting
    samba
    cifs-utils

    # Python
    python3

    # C / C++
    gcc
    gnumake
  ]);
}
