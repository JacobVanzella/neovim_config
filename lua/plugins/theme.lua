return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('tokyonight').setup({
            style = 'night',
            transparent = true,
            styles = {
                --sidebars = 'transparent',
                --floats = 'transparent',
            },
            --sidebars = { 'qf', 'help' },
            on_highlights = function(hl, c)
                hl.LineNr = {
                    fg = c.orange,
                }
                --hl.Comment = {
                --    fg = c.none,
                --}
            end
        })

        vim.cmd([[colorscheme tokyonight]])
    end
}
