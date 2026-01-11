return {
	{
		"mason-org/mason.nvim",
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
			ensure_installed = {
				"roslyn",
				"rzls",
				"netcoredbg",
			},
		},
	},
	{
		"seblyng/roslyn.nvim",
		---@module 'roslyn.config'
		---@type RoslynNvimConfig
		ft = { "cs", "razor" },
		opts = {
			filewatching = "roslyn",
			-- your configuration comes here; leave empty for default settings
		},
		config = function()
			vim.lsp.config("roslyn", {
				on_attach = function()
					print("This will run when the server attaches!")
				end,
				settings = {
					["csharp|completion"] = {
						dotnet_show_completion_items_from_unimported_namespaces = true,
						dotnet_show_name_completion_suggestions = true,
						dotnet_provide_regex_completions = true,
					},
					["csharp|background_analysis"] = {
						dotnet_analyzer_diagnostics_scope = "fullSolution",
						dotnet_compiler_diagnostics_scope = "fullSolution",
					},

					["csharp|symbol_search"] = {
						dotnet_search_reference_assemblies = true,
					},
					["csharp|inlay_hints"] = {
						csharp_enable_inlay_hints_for_implicit_object_creation = true,
						csharp_enable_inlay_hints_for_implicit_variable_types = true,
						csharp_enable_inlay_hints_for_lambda_parameter_types = true,
						csharp_enable_inlay_hints_for_types = true,
						dotnet_enable_inlay_hints_for_indexer_parameters = true,
						dotnet_enable_inlay_hints_for_literal_parameters = true,
						dotnet_enable_inlay_hints_for_object_creation_parameters = true,
						dotnet_enable_inlay_hints_for_other_parameters = true,
						dotnet_enable_inlay_hints_for_parameters = true,
						dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
						dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
						dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
					},
					["csharp|code_lens"] = {
						dotnet_enable_references_code_lens = true,
					},
				},
			})
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		opts = {},
		config = function()
			require("lint").linters_by_ft = {
				csharp = { "cspell" },
				javascript = { "prettierd", "prettier" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					-- try_lint without arguments runs the linters defined in `linters_by_ft`
					-- for the current filetype
					require("lint").try_lint()

					-- You can call `try_lint` with a linter name or a list of names to always
					-- run specific linters, independent of the `linters_by_ft` configuration
					-- require("lint").try_lint("cspell")
				end,
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					csharp = { "csharpier" },
					lua = { "stylua" },
					javascript = { "prettierd", "prettier", stop_after_first = true },
				},
			})

			--[[ vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			}) ]]

			vim.keymap.set("n", "<M-S-f>", conform.format, {})
			-- vim.keymap.set("n", "<leader>fd", print("format"), {})
		end,
	},
	{
		"zapling/mason-conform.nvim",
		opts = {},
		config = function() end,
	},
}
