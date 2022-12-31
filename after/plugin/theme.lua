local status_ok, tokyonight = pcall(require, "tokyonight")
if not status_ok then
    error(tokyonight)
    return
end

tokyonight.setup({
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
        keywords = { italic = false },
    },
    on_highlights = function(hl, c)
        hl.LineNr = {
            fg = c.magenta2,
        }
        -- Testy test test
        -- These are the comment colours
        hl.Comment = {
            fg = c.dark5,
        }
    end,
})

vim.cmd("colorscheme tokyonight")
