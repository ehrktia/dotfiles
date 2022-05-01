set encoding=utf-8
set nocompatible
filetype indent plugin on
syntax on
set runtimepath+=$HOME/.config/nvim/colors
set path+=**
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:indentLine_char = '⦙'
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/local/bin/python3'
set autowrite
set autoread
set autoindent
set textwidth=80
set undofile
set undolevels=10000
set smartindent
set spell
set smartcase
set noshowmode
set clipboard=unnamedplus
set tabstop=2
set tabline=2
set shiftwidth=2
set expandtab
set smarttab
" Make the keyboard faaaaaaast
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set number relativenumber
set path+=**
set wildmenu
set nrformats=
set incsearch
set wildignore=*.o,*.obj,*.bak,*.dmg
set ignorecase
set hlsearch
""set t_Co=256
"cosmetics"
""set background=dark
"if has('termguicolors')
"set termguicolors
"endif
let g:gruvbox_material_background = 'soft'
set spell
set directory=$HOME/.config/nvim/swap//
set undodir=$HOME/.config/nvim/undo//
set backupdir=$HOME/.config/nvim/backup//
set cursorline
set ruler
set cmdheight=2
set updatetime=300
set shortmess+=c
"to comment json file"
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
set foldlevelstart=20
autocmd FileType json syntax match Comment +\/\/.\+$+
set magic
" Show matching brackets when text indicator is over them
set showmatch
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%
" Remap VIM 0 to first non-blank character
map 0 ^
" Breaking lines with \[enter] without having to go to insert mode (myself).
nmap <leader><cr> i<cr><Esc>
set signcolumn=yes
set bs=2
set tw=80
set colorcolumn=80
highlight ColorColumn ctermbg=233
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set laststatus=2
set foldlevelstart=20
autocmd StdinReadPre * let s:std_in=1
""reselect visual block for indent
vnoremap < <gv
vnoremap > >gv
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:indentLine_char = '⦙'
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd StdinReadPre * let s:std_in=1
"list of plugins used"
call plug#begin('~/.config/nvim/plugged')
Plug '$HOME/.fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sebdah/vim-delve'
Plug 'davidosomething/vim-colors-meh'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'mrk21/yaml-vim'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf'
Plug 'frazrepo/vim-rainbow'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'uarun/vim-protobuf'
Plug 'Yggdroot/indentLine'
call plug#end()
"disable ultisnips"
let g:UltiSnipsExpandTrigger = "<nop>"
"lightline buffer plugin"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
:let mapleader = ","
"mapping to open dynamic tagbar toggle"
nmap <F8> :TagbarToggle<CR>
"nerdtree mappings"
"allows NERDTree to open/close by typing nt
map nt :NERDTreeToggle<CR>
"use leader q to close the window - general purpose"
:nmap <Leader>q :q<CR>
:nmap <Leader>nh :nohl<CR>
"nerdcommenter settings"
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
"auto close quotes and braces"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"del empty lines
:nmap <Leader>o  :FZF<CR>
""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
tmap <Esc> <C-\><C-n>

"navigate between terminal emulator and windows"
"yaml syntax highlight
"au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
let g:coc_snippet_next = '<tab>'
" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
""" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
""" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
""" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
""" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
""" Use tab for trigger completion with characters ahead and navigate.
""" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
""" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"make tab to expand snippets"
inoremap <silent><expr> <TAB>
             \ pumvisible() ? coc#_select_confirm() :
             \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
             \ <SID>check_back_space() ? "\<TAB>" :
             \ coc#refresh()
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"move lines using alt-j=down alt-k=up
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let g:gitgutterenable=1
" GoTo code navigation.
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)
let g:fzf_history_dir = '~/.config/nvim/fzf-history'
" Use K to show documentation in preview window.
 nnoremap <silent> K :call <SID>show_documentation()<CR>
 function! s:show_documentation()
   if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
   else
     call CocAction('doHover')
   endif
 endfunction
augroup mygroup
  autocmd!
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
map <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2
""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"tab navigation for buffers"
nmap <Tab> :bnext<CR>
"use shift tab to go prev buffer"
nmap <S-Tab> :bprevious<CR>
"custom key mappings - Learning"
"come out of ins Mode Using Below Keys"
inoremap jk <esc>
"mapping to captialize first letter of word -go naming conventions"
inoremap <c-u> <esc>viwb~ea
nnoremap <c-u> <esc>viwb~ea
"captialize entire word"
inoremap <Leader><c-u> <esc>gUawea
nnoremap <Leader><c-u> <esc>gUaw
"mapping to save file "
nnoremap <Leader>s :wa<cr>
"edit and source vimrc"
nnoremap <Leader>ev :vsp<cr>:e ~/dotfiles/init.vim<CR>
nnoremap <Leader>sv  :source ~/.config/nvim/init.vim<CR>
"remove highlight in search"
nnoremap <Leader>nh :nohl<cr>
"mapping to surround a word with double quotes"
nnoremap <Leader>" <esc>viw<esc>a"<esc>bi"<esc>lel
"mapping to surround word with braces- go multiple returns"
nnoremap <Leader>) <esc>viw<esc>a)<esc>bi(<esc>lel
"quit file"
nnoremap <Leader>q :q<cr>
"redo buffers"
nnoremap <Leader>e :bufdo e<cr>
nnoremap <Leader>bd :bufdo bd<cr>
"save file
nnoremap <Leader>s :w<cr>
"move a sentence up"
nnoremap _ ddkP
"move a sentence down"
nnoremap - ddp
"git diff split"
nnoremap <Leader>gd :Gdiffsplit<cr>
"visual mode mapping to wrap text "
"start terminal in vert and split mode"
:nmap <Leader>t  :new term://fish
:nmap <Leader>vt  :vnew term://fish
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>sa :wa<CR>
"list all buffers"
nnoremap <Leader>bl :ls<cr>
"open a vsplit with same file"
nnoremap <Leader>v :vsp<cr>
"open split with same file"
nnoremap <Leader>sp :sp<cr>
"print file name below status"
nnoremap <Leader>fn  :echo  @%<cr>
" git diff split"
 nnoremap <Leader>gs :Gdiffsplit<cr>
" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
"below func removes clean extra spaces during file being saved."
if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee,*.go,*.vim :call CleanExtraSpaces()
endif
"This turns off Vim's crazy default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v
"ripgrep integration to grep"
if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif
"force quit the file"
nnoremap <Leader>qa :q!<cr>
"colorscheme works only if placed at end of init.vim"
let g:impact_transbg=1
""colorscheme gruvbox-material
""colorscheme onedark
""colorscheme humanoid
"folds"
nnoremap <Leader>fo zfa{
"delve go debug"
let g:delve_backend = "native"
syntax on
colorscheme gruvbox-material
set background=dark
