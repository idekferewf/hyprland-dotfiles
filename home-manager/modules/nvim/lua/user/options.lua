-- Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- Line
vim.o.cursorline = true
vim.o.number = true
vim.o.signcolumn = 'no'
vim.opt.relativenumber = true

-- Undo
vim.o.undofile = true
vim.o.undodir = vim.fn.expand '~/.cache/nvim/undo'

-- Window dimensions
vim.o.winfixwidth = true
vim.o.winfixheight = true

-- Miscellaneous
vim.g.mapleader = ' '
vim.o.pumheight = 40
vim.opt.clipboard = 'unnamedplus'
vim.opt.fillchars = { eob = ' ' }
vim.opt.mouse = ''
vim.opt.termguicolors = true

-- Virtual text
vim.diagnostic.config {
    virtual_text = {
        prefix = function(diagnostic)
            if diagnostic.severity == vim.diagnostic.severity.ERROR then
                return ''
            elseif diagnostic.severity == vim.diagnostic.severity.WARN then
                return ''
            elseif diagnostic.severity == vim.diagnostic.severity.INFO then
                return ''
            else
                return ''
            end
        end,
    },
}

-- Disable builtin plugins
local plugins = {
    'gzip',
    'zip',
    'zipPlugin',
    'tar',
    'tarPlugin',
    'getscript',
    'getscriptPlugin',
    'vimball',
    'vimballPlugin',
    '2html_plugin',
    'matchit',
    -- 'matchparen',
    'logiPat',
    'rrhelper',
    'netrw',
    'netrwPlugin',
    'netrwSettings',
    'netrwFileHandlers',
}

for i = 1, #plugins do
    vim.g['loaded_' .. plugins[i]] = true
end
