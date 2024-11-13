local options = {
	tabstop = 2, 
	shiftwidth = 2, 
	expandtab = True
}

-- plugin開発
local developing = 1
if developing == 1 then
	vim.opt.runtimepath:append {"/home/yoshimi/github/nvim_plugin_sample/"}
    vim.cmd("let g:denops#debug = 1")
end
