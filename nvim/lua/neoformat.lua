vim.keymap.set('n', '<LEADER>b', ':Neoformat<CR>')

-- Avoid having clang-format as the default formatter in case on syntax error
vim.g.neoformat_enabled_cpp = { "uncrustify" }
vim.g.neoformat_enabled_javascript = { "prettier" }
vim.g.neoformat_enabled_typescript = { "prettier" }
vim.g.neoformat_enabled_typescriptreact = { "prettier" }

-- Rely on formatprg for format settings
vim.g.neoformat_try_formatprg = 1

-- Default configuration (for when no formatter is applicable)
-- Enable alignment
vim.g.neoformat_basic_format_align = 1
-- Enable trimmming of trailing whitespace
vim.g.neoformat_basic_format_trim = 1

-- Don't forget to install luaformatter
-- (`luarocks install --local --server=https://luarocks.org/dev luaformatter`)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "lua",
    callback = function() vim.opt_local.formatprg = 'lua-format' end
})

-- Don't forget to install prettier globally (`npm install -g prettier`)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "javascript",
    callback = function()
        vim.opt_local.formatprg =
            'prettier --parser typescript --stdin-filepath @%'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "json",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser json --stdin-filepath @%n'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "typescript",
    callback = function()
        vim.opt_local.formatprg = 'prettier --stdin-filepath @%'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "html",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser html --stdin-filepath @%'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "svg",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser html --stdin-filepath @%'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "css",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser css --stdin-filepath @%'
    end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "scss",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser css --stdin-filepath @%'
    end
})

-- @TODO ditch GoFmt plugin for Neoformat (less dependencies is good)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "go",
    callback = function() vim.keymap.set('n', '<LEADER>b', ':GoFmt<CR>') end
})

vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "yaml,yml",
    callback = function()
        vim.opt_local.formatprg = 'prettier --parser yaml --stdin-filepath @%'
    end
})

-- @TODO ditch TerraformFmt plugin for Neoformat (less dependencies is good)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "terraform",
    callback = function()
        vim.keymap.set('n', '<LEADER>b', ':TerraformFmt<CR>')
    end
})

-- @TODO edition could be retrieved to dynamically adjust per project
-- (or rather rustfmt should do that automatically…)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "rust",
    -- callback = function() vim.opt_local.formatprg = 'rustfmt --edition 2021' end
    callback = function() vim.opt_local.formatprg = 'rustfmt --edition 2024' end
})

-- Don't forget to install black (`pip install black`)
vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = "python",
    callback = function() vim.opt_local.formatprg = 'black @%' end
})
