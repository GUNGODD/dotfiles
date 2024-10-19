


# hyprland.nix 

{config,home-manager, lib, pkgs, ...}:

{



  options.programs.hyprland.enable = {

type = types.bool;
description = "Enable hyperland window manager";
default = false;
    };
    config.programs.hyprland.enable= config.programs.hyprland.enable;


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
