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
    libcap # for go
    gcc    # for go


    ## Lang
    elixir
    rustup
    go

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
