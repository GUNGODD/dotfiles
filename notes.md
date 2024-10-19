# home manager in nix 

Gen1 -> Gen2 -> Gen3

it focus on system level configuration to user level configuration  
## how home manager accomplish this 

home-manager is a tool that allows you to configure your home environment using a declarative configuration file. It provides a way to manage your dotfiles, packages, and other configuration files across multiple machines. 
home.nix -> generated dotfiles (.cofig .vimrc .zshrc etc) all of the doc file becomes symlink to the home-manager generated file   thin of it as  pro developer wants to switch hyperland setup to gnome setup DWM setup  it will tear down the previous config setup and generate the new one completely new setup with new version of files it's just awsome


## System and users 

System -> manages the system services and *configuration.nix * nixos-rebuild  *require sudo 
User -> manages the dotfiles and user services  *home.nix * home-manager  * nod sudo required  
                   (distinct * seperate )

1. There are two types of setups standalone and moduler and darwin 