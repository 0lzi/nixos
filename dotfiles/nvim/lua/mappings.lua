require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Navigate nvim windows with vim hjkl
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window Left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window Right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window Down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window Up"})

-- Show Whitespaces
map("n", "<leader>ll", "<cmd> set list! <CR>", { desc = "Toggle Whitespaces"})

-- Lazy git
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Marp - Markdown presentations
map("n", "<leader>mt", "<cmd>MarpToggle<CR>", { desc = "Toggle Marp Server"})
map("n", "<leader>ms", "<cmd>MarpStatus<CR>", { desc = "Show Marp Server Status"})
