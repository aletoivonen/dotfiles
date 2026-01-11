return {

	{
		-- Debug Framework
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			{
				"ownself/nvim-dap-unity",
				build = function()
					-- make sure adapter to be installed properly
					require("nvim-dap-unity").install()
				end,
			},
		},
		config = function()
			-- require("configs.nvim-dap")
			local dap = require("dap")
			local dapui = require("dapui")

      require("nvim-dap-unity").setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<leader>dc", dap.continue, {})
		end,
		event = "VeryLazy",
	},
	{ "nvim-neotest/nvim-nio" },
	{
		-- UI for debugging
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			require("configs.nvim-dap-ui")
		end,
	},
	{
		"nvim-neotest/neotest",
		requires = {
			{
				"Issafalcon/neotest-dotnet",
			},
		},
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
	},
	{
		"Issafalcon/neotest-dotnet",
		lazy = false,
		dependencies = {
			"nvim-neotest/neotest",
		},
	},
}
