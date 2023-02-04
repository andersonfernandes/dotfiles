require 'anderson.utils.functions'

local keymap = require 'anderson.utils.keymap'
local nnoremap = keymap.nnoremap
-- local vnoremap = keymap.vnoremap
-- local inoremap = keymap.inoremap
local xnoremap = keymap.xnoremap
local nmap = keymap.nmap

nnoremap("<Leader>ev", ":vsplit ~/.config/nvim/init.lua<CR>")

nnoremap("Q", "<nop>", {silent = true})
nmap('<esc>', ':noh <CR>', {silent = true})

-- Copy current file relative path
nnoremap('<leader>c', ':let @+=fnamemodify(expand("%"), ":~:.")<CR>', {silent = true})

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

-- Update tags file with ctags
nnoremap("<leader>ut", ":! ctags -R -V  --exclude=.git --exclude=node_modules --exclude=tmp --exclude=vendor --exclude=public --exclude=coverage --exclude=railsboxdev *<CR>")

-- Jumpers
nnoremap("<leader>jc", ":Files app/controllers<CR>")
nnoremap("<leader>jm", ":Files app/models<CR>")
nnoremap("<leader>jv", ":Files app/views/<CR>")
nnoremap("<leader>js", ":Files spec/<CR>")

-- telescope.nvim
nnoremap('<leader>te', ':Telescope<CR>')
nmap('<leader>gc', ':Telescope git_branches<CR>')
nnoremap('<c-f>', ':Telescope live_grep<CR>')
nnoremap('<c-p>', ':Telescope find_files<CR>')
nnoremap('<c-b>', ':Telescope buffers<CR>')

-- nvim-tree.lua
nnoremap("<leader><space>", ":NvimTreeToggle<CR>")
nnoremap("<leader>f", ":NvimTreeFindFile<CR>")

-- vim-test
nmap('<leader>tt', ':TestFile -strategy=neovim<CR>', {silent = true})
nmap('<leader>tl', ':TestNearest -strategy=neovim<CR>', {silent = true})

-- vim-fugitive
nmap('<leader>gh', ':diffget //2<CR>')
nmap('<leader>gl', ':diffget //3<CR>')
nnoremap('<leader>gs', ':lua toggle_git_status_cmd()<CR>', {silent = true})
nnoremap('<leader>gp', ':Git push<CR>')
nnoremap('<leader>gpf', ':Git push --force<CR>')

-- coc.nvim
nmap('gd', '<Plug>(coc-definition)', {silent = true})
nmap('gr', '<Plug>(coc-references)', {silent = true})
nmap('<leader>rn', '<Plug>(coc-rename)')

-- fine-cmdline
nnoremap(':', '<cmd>FineCmdline<CR>')
