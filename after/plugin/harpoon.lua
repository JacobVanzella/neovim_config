local status_ok, harpoon = pcall(require, "harpoon")
if not status_ok then
    error(status_ok)
    return
end

_, harpoon_cmd_ui = pcall(require, "harpoon.cmd-ui")
_, harpoon_mark = pcall(require, "harpoon.mark")
_, harpoon_ui = pcall(require, "harpoon.ui")

-- Keymaps to make Harpoon BLAZINGLY FAST
vim.keymap.set("n", "<leader>ha", harpoon_mark.add_file, {})
vim.keymap.set("n", "<leader>hh", harpoon_ui.toggle_quick_menu, {})
vim.keymap.set("n", "<leader>hn", harpoon_ui.nav_next, {})
vim.keymap.set("n", "<leader>hp", harpoon_ui.nav_prev, {})
vim.keymap.set("n", "<leader>h1", function() harpoon_ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() harpoon_ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() harpoon_ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() harpoon_ui.nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() harpoon_ui.nav_file(5) end)
vim.keymap.set("n", "<leader>h6", function() harpoon_ui.nav_file(6) end)
vim.keymap.set("n", "<leader>h7", function() harpoon_ui.nav_file(7) end)
vim.keymap.set("n", "<leader>h8", function() harpoon_ui.nav_file(8) end)
vim.keymap.set("n", "<leader>h9", function() harpoon_ui.nav_file(9) end)
