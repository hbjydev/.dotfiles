local actions = require("telescope.actions")

local g = vim.g
local o = vim.o
local bo = vim.bo
local wo = vim.wo

o.exrc = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.relativenumber = true
o.number = true
o.hlsearch = false
o.hidden = true
o.errorbells = false
o.wrap = false
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. '/.local/share/nvim/undo'
o.undofile = true
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.showmode = false
o.completeopt = 'menuone,noinsert,noselect'
o.signcolumn = 'yes'
o.autoread = true
o.cmdheight = 2
o.updatetime = 50
o.colorcolumn = '80'

vim.cmd[[colorscheme gruvbox]]

require("telescope").setup{
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            }
        },
        layout_strategy = "horizontal",
        file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new
    }
}

require('codicons').setup{}

g.NERDTreeWinPos = "right"

