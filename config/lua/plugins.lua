print("loaded plugins successfully")
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use '/usr/local/bin/fzf'
    use 'sebdah/vim-delve'
    use 'davidosomething/vim-colors-meh'
    use 'sheerun/vim-polyglot'
    use 'sainnhe/gruvbox-material'
    use 'itchyny/lightline.vim'
    use 'rust-lang/rust.vim'
    use 'cespare/vim-toml'
    use 'SirVer/ultisnips'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'honza/vim-snippets'
    use 'scrooloose/nerdtree'
    use 'scrooloose/nerdcommenter'
    use 'junegunn/vim-easy-align'
    use 'mrk21/yaml-vim'
    use 'morhetz/gruvbox'
    use 'joshdick/onedark.vim'
    use 'frazrepo/vim-rainbow'
    use 'pedrohdz/vim-yaml-folds'
    use 'uarun/vim-protobuf'
    use 'Yggdroot/indentLine'
    use 'neovim/nvim-lspconfig'
    use "rafamadriz/friendly-snippets"
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'junegunn/fzf'
end)
