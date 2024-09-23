return {
	"jpalardy/vim-slime",
	config = function()
		vim.g.slime_target = "tmux" -- Define que tmux será el objetivo
		vim.g.slime_default_config = { socket_name = "default", target_pane = "{right-of}" }
		vim.g.slime_bracketed_paste = 1

		vim.keymap.set("n", ",l", ":SlimeSendCurrentLine<CR>", { noremap = true, silent = true })
		vim.keymap.set("v", ",l", ":SlimeSend<CR>", { noremap = true, silent = true }) -- Enviar todo el archivo hasta la línea actual
		vim.keymap.set("n", ",c", "ggVG:SlimeSend<CR>", { noremap = true, silent = true }) -- Enviar todo el archivo completo
	end,
}
