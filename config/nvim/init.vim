"to comment json file"
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType json syntax match Comment +\/\/.\+$+
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
""set viminfo^=%
highlight ColorColumn ctermbg=233
autocmd StdinReadPre * let s:std_in=1
""let $FZF_DEFAULT_COMMAND = 'ag -g ""'
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
""nnoremap / /\v
""vnoremap / /\v
"ripgrep integration to grep"
if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif
"delve go debug"
""let g:delve_backend = "native"
lua require ('basic')
lua require ('map')
lua require ('command')
lua require ('custom')
