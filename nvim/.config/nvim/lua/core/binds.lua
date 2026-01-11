vim.g.mapleader = " "
-- vim.keymap.set("n", "<C-w>", ":q<CR>")
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<S-Up>", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
--vim.keymap.set("n", "<F24>", vim.lsp.buf.references, {})
