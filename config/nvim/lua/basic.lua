print("basic config loaded successfully")
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local set = vim.opt
local env = vim.env
local g = vim.g
--colourscheme
require('gruvbox-material').setup()
--global settings
g.mapleader=','
env.NVIM_TUI_ENABLE_TRUE_COLOR=1
env.FZF_DEFAULT_COMMAND='rg --files --hidden'
set.shortmess:append('c')
set.encoding='utf-8'
set.autowrite=true
set.autoindent=true
set.textwidth=80
set.undofile=true ; bo.undofile=true --persistent undo file
set.undolevels=10000
set.smartindent=true
set.smartcase=true
set.ignorecase=true
set.showcmd=true
set.wildmenu=true
set.showmatch=true
set.spell=true
set.clipboard='unnamedplus'
set.tabstop=2
set.tabline='2'
set.shiftwidth=2
set.expandtab=true
set.smarttab=true
set.ttyfast=true
set.timeout=true
set.timeoutlen=1000
set.ai=true
set.si=true
set.wrap=true
set.number=true
set.relativenumber=true
set.incsearch=true
set.ignorecase=true
set.hlsearch=true
set.spell=true
set.hidden=true
set.title=true
set.cursorline=true
set.ruler=true
set.cmdheight=2
set.updatetime=300
set.swapfile=true
set.directory='$HOME/.config/nvim/swap//'
set.undodir='$HOME/.config/nvim/undo//'
set.backupdir='$HOME/.config/nvim/backup//'
set.signcolumn='yes'
set.bs='2'
set.tw=80
set.colorcolumn='80'
set.tabstop=4
set.softtabstop=4
set.shiftwidth=4
set.shiftround=true
set.expandtab=true
set.laststatus=2
set.foldlevelstart=20
set.path:append('**')
set.nrformats=''
set.magic=true
set.showmatch=true
set.foldlevelstart=20
set.background='dark'
set.wildignore = {'*.o','*.obj','*.bak','*.dmg'}
set.shada = {'%','\'50','\"100',':100'}
