print("mapping loaded successfully")
local map = vim.api.nvim_set_keymap
local options = {noremap = true}
--mapping to fileoperation
map('n','<leader>s',':w<CR>',options)
map('n','<leader>q',':q<CR>',options)
-- map to highlight
map('n','<leader>nh',':nohl<CR>',options)
-- nerd tree mapping
map('n','<leader>nt',':NERDTreeToggle<CR>',options)
--fzf
map('n','<leader>o',':FZF<CR>',options)
-- navigate tabs
map('i','<C-J>','<C-W><C-J>',options)
map('i','<C-K>','<C-W><C-K>',options)
map('n','<C-J>','<C-W><C-J>',options)
map('n','<C-K>','<C-W><C-K>',options)
map('n','<C-L>','<C-W><C-L>',options)
map('n','<C-H>','<C-W><C-H>',options)
-- tag toggle
map('n','<F8>',':TagbarToggle',options)
-- vimrc operations
map('n','<Leader>sv',':source $HOME/.config/nvim/init.lua<CR>',options)
-- remap escape key
map('i','jk','<esc>',options)
--tab navigations to test yet
map('n','<Tab>',':bnext<CR>',options)
map('n','<S-Tab>',':bprevious<CR>',options)
--capitalize first letter
map('i','<c-u>','<esc>viwb~ea',options)
map('n','<c-u>','<esc>viwb~ea',options)
--captialize entire word
map('i','Leader<c-u>','<esc>gUawea',options)
map('n','Leader<c-u>','<esc>gUaw',options)
-- surround word with double quotes and brackets
map('n','<Leader>"','<esc>viw<esc>a"<esc>bi"<esc>lel',options)
map('n','<Leader>)','<esc>viw<esc>a)<esc>bi(<esc>lel',options)
-- redo buffer
map('n','<Leader>bd',':bufdo bd<CR>',options)
map('n','<Leader>e',':bufdo e<CR>',options)
map('n','0',"^",options)
map('n','<Leader><CR>','i<CR><esc>',options)
map('v','<','<gv',options)
map('v','>','>gv',options)
-- move line up
map('n','_','ddkP',options)
-- line down
map('n','-','ddp',options)
map('n','<Leader>gd',':Gdiffsplit',options)
map('n','<Leader>t',':new term://$TERMINAL',options)
map('n','<Leader>vt',':vnew term://$TERMINAL',options)
map('n','<Leader>sa',':wa<CR>',options)
map('n','<Leader>bl',':ls<CR>',options)
map('n','<Leader>sp',':sp<CR>',options)
map('n','<Leader>v',':vsp<CR>',options)
map('n','<Leader>fn',':echo @%<CR>',options)
map('n','<Leader>qa',':q!<CR>',options)
map('n','<Leader>fo','zfa{',options)
