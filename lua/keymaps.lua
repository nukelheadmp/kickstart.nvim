-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- Custom keymaps
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "[F]ile [E]xplorer" })
--vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "[W]indow operation" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move one pane left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move one pane down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move one pane up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move one pane right" })
vim.keymap.set("n", "<leader>b", "<nop>", { desc = "Buffer Operations" })
vim.keymap.set("n", "<leader>bd", ":bd<cr>", { desc = "[B]uffer [D]elete" })
vim.keymap.set("n", "<leader>bn", ":bn<cr>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bp<cr>", { desc = "[B]uffer [P]revious" })
-- Stolen from ThePrimeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "[P]aste w/o picking up" })
--vim.keymap.set("n", "<leader>y", "\"+y", { desc = "[Y]ank to system clipboard" })
--vim.keymap.set("v", "<leader>y", "\"+y", { desc = "[Y]ank to system clipboard" })
--vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "[Y]ank to system clipboard" })
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "[D]elete to void register" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "[D]elete to void register" })
vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "[S]earch and replace" })
