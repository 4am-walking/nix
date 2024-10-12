{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    swaybg
    hyprpicker
  ];
  systemd.user.targets.hyprland-sessions.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = true;
  };
}
