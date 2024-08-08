{ pkgs, ... }:
{
  home.packages = (with pkgs; [
    firefox
    tree
    git
    fastfetch
    hyprpaper		# wallpaper
    htop
    btop
    yazi		# tui file manager
    waybar		# nav bar
    fuzzel		# app search
    ncmpcpp		# music streaming
    kitty		# terminal emulator
    wget

    # Python
    python3

    # C / C++
    gcc
    gnumake
  ]);
}
