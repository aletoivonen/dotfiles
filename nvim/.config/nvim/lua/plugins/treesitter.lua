return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	opts = {
		auto_install = true,
		ensure_installed = {
			"lua",
			"html",
			"css",
      "cpp",
			"c_sharp",
			"razor",
			"hyprlang",
		},
		highlight = { enable = true },
		indent = { enable = true },
		folds = { enable = true },
	},
}
