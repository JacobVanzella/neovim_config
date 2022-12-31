local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
    error(lsp)
    return
end

lsp.preset("recommended")
lsp.ensure_installed({
    "eslint",
    "sumneko_lua",
    "rust_analyzer",
    "ltex",
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<c-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<c-n>"] = cmp.mapping.select_next_item(cmp_select),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    preselect = 'none',
    completion = { completeopt = "menu,menuone,noinsert,noselect" },
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {},
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()

-- LSP
vim.keymap.set("n", "<c-f>", vim.cmd.LspZeroFormat)
