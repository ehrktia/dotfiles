print("custom mapping loaded successfully")
local map = vim.api.nvim_set_keymap
local options = {noremap = true}
map('i','"','""<left>',options)
map('i','(','()<left>',options)
map('i','[','[]<left>',options)
map('i','{','{}<left>',options)
map('i','{<CR>','{<CR>}<ESC>O',options)
map('i','{;<CR>','{<CR>};<ESC>O',options)
