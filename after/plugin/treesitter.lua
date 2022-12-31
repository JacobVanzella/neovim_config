local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    error(ts_configs)
    return
end

ts_configs.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
    },
    indent = {
        enable = false,
    },
}

-- Telescope mapping
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
