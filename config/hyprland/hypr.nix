{ config, pkgs, inputs, ... }: {
  imports = [
    inputs.hyprland.homeManagerModules.default
  ];

  wayland.windowManager.hyprland.enable  = true;
  # ...
#     this is hyprland file for flakes configure t 



}
