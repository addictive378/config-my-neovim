require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-t>", function()
  require("minty.shades").open({ border = false })
end, {})

vim.keymap.set("n", "<C-p>", ":FloatermToggle<CR>", { silent = true })

-- Navigasi arah di mode insert menggunakan Alt ...
vim.keymap.set("i", "<A-h>", "<Left>", {desc = "Geser Kursor Ke Kiri"})
vim.keymap.set("i", "<A-j>", "<Down>", { desc = "Geser Kursor ke Bawah" })
vim.keymap.set("i", "<A-k>", "<Up>", { desc = "Geser Kursor ke Atas" })
vim.keymap.set("i", "<A-l>", "<Right>", { desc = "Geser Kursor ke Kanan" })

-- Keymap untuk buat komentar:
-- map("n", "<C-_>", "gcc", { desc = "Toggle comment", remap = true })
-- map("v", "<C-_>", "gc", { desc = "Toggle comment", remap = true })

-- Keymap untuk undo dan redo mode insert
map("i", "<C-z>", "<C-o>u", { desc = "Undo" })
map("i", "<C-y>", "<C-o><C-r>", { desc = "Redo" })

-- Keymap hapus perkata
vim.keymap.set('n', '<C-BS>', 'diw', { silent = true, desc = "Hapus kata" })
vim.keymap.set('i', '<C-BS>', '<C-w>', { silent = true, desc = "Hapus kata sebelumnya" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
