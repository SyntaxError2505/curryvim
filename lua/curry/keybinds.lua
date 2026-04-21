-- Filesystem
vim.keymap.set("n", "<leader>b", ":Neotree filesystem toggle left<CR>", { desc = "Open file-tree", silent = true, })

-- FFF (Grep and search)
vim.keymap.set("n", "<leader>ff", function() require("fff").find_files() end, {desc = "Find files"})
vim.keymap.set("n", "<leader>fg", function() require("fff").live_grep() end, {desc = "Grep files"})
vim.keymap.set("n", "<leader>fz", function () require("fff").live_grep( {grep = { modes = { "fuzzy", "plain" }}}) end, {desc = "Fuzzy Grep files"})
vim.keymap.set("n", "<leader>fc", function() require("fff").live_grep({ query = vim.fn.expand("<cword>")}) end, {desc = "Grep current word"})

-- Snippets
local ls = require("luasnip")
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

-- Windows
vim.keymap.set("n", "<leader>v", ":vs<cr>", {silent = true, desc = "open vertical window"})
vim.keymap.set("n", "<leader>h", ":sp<cr>", {silent = true, desc = "open horizontal window"})
