{config, pkgs, ...}:

let 
myAliases= {
  ll = "ls -l";
 ".." = "cd ..";
  };
# aditya 
in
{
programs.zsh= {
enable = true;
shellAliases = myAliases;
};


  }
