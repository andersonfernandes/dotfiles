require 'anderson.utils.functions'

local keymap = require 'anderson.utils.keymap'
local nnoremap = keymap.nnoremap
local xnoremap = keymap.xnoremap
local nmap = keymap.nmap

nnoremap("Q", "<nop>", { silent = true })
-- nmap('<esc>', ':noh <CR>', { silent = true })

-- Copy current file relative path
nnoremap('<leader>c', ':let @+=fnamemodify(expand("%"), ":~:.")<CR>', { silent = true })

-- Splits
nnoremap("<leader>vs", ":vsplit<CR>")
nnoremap("<leader>hs", ":split<CR>")

-- Moving between splits
nmap("<c-j>", "<c-w>j")
nmap("<c-k>", "<c-w>k")
nmap("<c-h>", "<c-w>h")
nmap("<c-l>", "<c-w>l")

-- Tabs new/close
nnoremap("<leader>tn", ":tabnew<CR>")
nnoremap("<leader>tq", ":tabclose<CR>")

-- Wrap toggles
nnoremap("<leader>w", ":set wrap<CR>")
nnoremap("<leader>nw", ":set nowrap<CR>")

-- Moves a visual block
xnoremap("K", ":move '<-2<CR>gv-gv")
xnoremap("J", ":move '>+1<CR>gv-gv")

-- telescope.nvim
nnoremap('<leader>te', ':Telescope<CR>')
nnoremap('lgw', ':lua live_grep_word()<CR>')
nmap('<leader>gc', ':Telescope git_branches<CR>')
nnoremap('<c-f>', ':Telescope live_grep<CR>')
nnoremap('<c-p>', ':Telescope find_files<CR>')
nnoremap('<c-b>', ':Telescope buffers<CR>')

-- nvim-tree.lua
nnoremap("<leader><space>", ":NvimTreeToggle<CR>")
nnoremap("<leader>f", ":NvimTreeFindFile<CR>")

-- vim-fugitive
nnoremap('<leader>gs', ':lua toggle_git_status_cmd()<CR>', { silent = true })
nnoremap('<leader>gp', ':Git push<CR>')
nnoremap('<leader>gpf', ':Git push --force<CR>')

-- coc.nvim
nmap('gd', '<Plug>(coc-definition)', { silent = true })
nmap('gr', '<Plug>(coc-references)', { silent = true })
nmap('<leader>rn', '<Plug>(coc-rename)')

-- fine-cmdline
nnoremap(':', '<cmd>FineCmdline<CR>')

-- todo-comments.nvim
nnoremap('<leader>td', ':TodoTelescope<CR>')

-- ChatGPT.nvim
nnoremap('<leader>gpt', ':ChatGPT<CR>')
