{ ... }:
{
  home-manager.users.dmr = {
    programs.vim = {
      enable = true;
      plugins = [
        "vim-airline" 
        "nerdtree" 
        "vim-nix"
        "youcompleteme"
        "vim-addon-nix"
      ];
      settings = { ignorecase = true; };
      extraConfig = ''
        set mouse=a
        map <F2> :NERDTreeToggle<CR>
        map <F3> :NERDTreeFind<CR>
      '';
    };
  };
}
