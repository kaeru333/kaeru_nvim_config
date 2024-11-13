local options = {
	tabstop = 4, 
	shiftwidth = 4, 
	wxpandtab = True,
}

--[[
vim.cmd("let g:vim_virtualenv_path = '/home/yoshimi/myfiles/mypro/env_jupyter'")
vim.cmd("if exists('g:vim_virtualenv_path')")
vim.cmd("    pythonx import os; import vim")
vim.cmd("    pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')")
vim.cmd("    pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})")
vim.cmd("endif")
]]--

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

