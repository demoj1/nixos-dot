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
        "vim-gitgutter"
        "ctrlp-vim"
      ];
      settings = { ignorecase = true; };
      extraConfig = ''
        set mouse=a
        set encoding=utf-8
        map <F2> :NERDTreeToggle<CR>
        map <F3> :NERDTreeFind<CR>
      '';
    };
  };
}
