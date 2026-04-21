-- Filesystem
vim.keymap.set("n", "<leader>b", ":Neotree filesystem toggle left<CR>", { desc = "Open file-tree", })

-- FFF (Grep and search)
vim.keymap.set("n", "<leader>ff", function() require("fff").find_files() end, {desc = "Find files"})
vim.keymap.set("n", "<leader>fg", function() require("fff").live_grep() end, {desc = "Grep files"})
vim.keymap.set("n", "<leader>fz", function () require("fff").live_grep( {grep = { modes = { "fuzzy", "plain" }}}) end, {desc = "Fuzzy Grep files"})
vim.keymap.set("n", "<leader>fc", function() require("fff").live_grep({ query = vim.fn.expand("<cword>")}) end, {desc = "Grep current word"})
