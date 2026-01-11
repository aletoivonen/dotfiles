return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		config = function()
			-- vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>")

			vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>")
			-- vim.keymap.set('n', '<C-w>', ':
			require("neo-tree").setup({
				--[[ event_handlers = {
          {
            event = "file_open_requested",
            handler = function()
              vim.cmd("Neotree close")
            end
          }
        } ]]
			})
		end,
		lazy = false, -- neo-tree will lazily load itself
	},
}
