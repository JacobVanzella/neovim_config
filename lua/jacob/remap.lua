local nnoremap = require("jacob.keymap").nnoremap

-- Set <leader> key
vim.g.mapleader = " "

-- Text manipulation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Dangerous

-- Copy to system
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Functional remaps
vim.keymap.set("i", "<c-c>", "<Esc>")
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzzzv");
vim.keymap.set("n", "N", "Nzzzv");
vim.keymap.set("n", "<c-i>", "<c-i>zz")
vim.keymap.set("n", "<c-o>", "<c-o>zz")

-- The dark place (send these things to the fucking void)
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
