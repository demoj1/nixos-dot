{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wget
    vim
    git
    vscode
    sublime3
    google-chrome
    fish
    guake
    tdesktop
  ];
}
