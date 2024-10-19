


# hyprland.nix 

{config, lib, pkgs, ...}:

{


home.packages = with pkgs ;[
hyprshot
hyprland-per-window-layout
hyprlandPlugins.hyprbars
fuzzel 
polkit_gnome
wtype
wl-clipboard
hyperpicker
swayidle
gtlock
swaybg
xdg-desktop-portal-hyprland
wlsunset
pavucontrol
grim
slurp
];
  }
