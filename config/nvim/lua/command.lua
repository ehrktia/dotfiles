print("loaded command settings successfully")
vim.cmd[[
filetype indent plugin on
syntax on
]]
-- global commands 
vim.g['indentLine_char'] = '⦙'
vim.g['loaded_python_provider']=0
vim.g['python3_host_prog']='/usr/bin/python3'
vim.g['NERDSpaceDelims']=1
vim.g['NERDCommentEmptyLines']=1
vim.g['NERDTrimTrailingWhitespace']=1
vim.g['NERDTreeWinSize']=45
vim.g['gitgutterenable']=1
vim.g['impact_transbg']=1
vim.g['delve_backend']='native'
