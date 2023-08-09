return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    config = function()
        local harpoon = require('harpoon')

        harpoon_cmd_ui = require('harpoon.cmd-ui')
        harpoon_mark = require('harpoon.mark')
        harpoon_ui = require('harpoon.ui')

        -- Keymaps to make Harpoon BLAZINGLY FAST
        vim.keymap.set('n', '<leader>ha', harpoon_mark.add_file, {})
        vim.keymap.set('n', '<leader>hh', harpoon_ui.toggle_quick_menu, {})
        vim.keymap.set('n', '<leader>hn', harpoon_ui.nav_next, {})
        vim.keymap.set('n', '<leader>hp', harpoon_ui.nav_prev, {})
        vim.keymap.set('n', '<leader><char-0x27>', function() harpoon_ui.nav_file(1) end)
        vim.keymap.set('n', '<leader><char-0x2c>', function() harpoon_ui.nav_file(2) end)
        vim.keymap.set('n', '<leader><char-0x2e>', function() harpoon_ui.nav_file(3) end)
        vim.keymap.set('n', '<leader><char-0x70>', function() harpoon_ui.nav_file(4) end)
    end
}
