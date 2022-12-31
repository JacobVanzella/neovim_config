local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    error(lualine)
    return
end

lualine.setup {
    options = {
        theme = "tokyonight"
    }
}
