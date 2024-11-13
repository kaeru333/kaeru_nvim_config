vim.scriptencodeing = "utf-8"
vim.wo.number = true

local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	termguicolors = true,
	winblend = 0,
	pumblend = 0,
	number = true,
	showmode = false,
	cursorline = true,
	clipboard = {"unnamedplus"},
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

-- カラースキーム
require("tokyonight").setup({
	transparent = true,
	styles = {
		sidebars = "transparent",
		floats = "transparent",
	},
})
vim.cmd[[colorscheme tokyonight-moon]]

-- lualineのテーマ
require('lualine').setup{
	theme = 'tokyonight',
}
vim.cmd("let g:denops#deno = '/home/yoshimi/.deno/bin/deno'")

require("toggleterm").setup()

require('quarto').setup{
	closepreviewonexit = true,
	debug = false,
}

vim.g.slime_target = "tmux"
vim.g.slime_default_config = {socket_name = "default", target_pane = "{last}"}
