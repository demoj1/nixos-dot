{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Dev
    wget
    git
    guake
    fish
    ctags
    docker_compose
    docker

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
    vlc
    tree

    ## Network
    openconnect
    networkmanager

    # Fonts
    fira-code
    source-code-pro
  ];
}
