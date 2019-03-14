{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Dev
    wget
    git
    guake
    fish
    ctags

    ## Lang
    elixir
    rustup

    ## Editors
    vscode
    sublime3
    jetbrains.pycharm-community
    vim
    emacs

    # Other
    google-chrome
    tdesktop
    mc
    inkscape
    flameshot

    ## Network
    openconnect
    networkmanager

    # Fonts
    fira-code
    source-code-pro
  ];
}
