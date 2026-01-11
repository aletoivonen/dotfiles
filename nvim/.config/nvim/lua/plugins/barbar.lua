return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_step = false
	end,
	config = function()
		vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", {})
		vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", {})
		vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", {})
		vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", {})
		vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", {})
		vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", {})
		vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", {})
		vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", {})
		vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", {})
		vim.keymap.set("n", "<A-0>", "<Cmd>BufferGoto 0<CR>", {})

		-- Move to previous/next
		vim.keymap.set("n", "<A-Left>", "<Cmd>BufferPrevious<CR>", {})
		vim.keymap.set("n", "<A-Right>", "<Cmd>BufferNext<CR>", {})

		-- Re-order to previous/next
		vim.keymap.set("n", "<A-S-Left>", "<Cmd>BufferMovePrevious<CR>", {})
		vim.keymap.set("n", "<A-S-Right>", "<Cmd>BufferMoveNext<CR>", {})
	end,
	opts = {},
}
