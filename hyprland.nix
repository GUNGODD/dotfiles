


# hyprland.nix 

{config,home-manager, lib, pkgs, ...}:

{


home.packages = with pkgs ;[
 fuzzel 
 polkit_gnome
  wtype
 wl-clipboard
 hyprpicker
 swayidle

swaybg
 xdg-desktop-portal-hyprland
 wlsunset
 pavucontrol
 grim
 slurp
];
  }
