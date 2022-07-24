local keymap = require("custom.keymap")
local nnoremap = keymap.nnoremap
local vnoremap = keymap.vnoremap
local inoremap = keymap.inoremap
local xnoremap = keymap.xnoremap
local nmap = keymap.nmap

nnoremap("<Leader>ev", ":vsplit ~/.config/nvim/init.lua<cr>")
nnoremap("<Leader>sv", ":source ~/.config/nvim/init.lua<cr>")

nnoremap("Q", "<nop>")

-- Splits
nnoremap("<leader>vs", ":vsplit<cr>")
nnoremap("<leader>hs", ":split<cr>")

-- Moving between splits
nmap("<c-j>", "<c-w>j")
nmap("<c-k>", "<c-w>k")
nmap("<c-h>", "<c-w>h")
nmap("<c-l>", "<c-w>l")

-- Tabs new/close
nnoremap("<leader>tn", ":tabnew<cr>")
nnoremap("<leader>tq", ":tabclose<cr>")

-- Wrap toggles
nnoremap("<leader>w", ":set wrap<cr>")
nnoremap("<leader>nw", ":set nowrap<cr>")

-- Moves a visual block
xnoremap("K :move", "'<-2<CR>gv-gv")
xnoremap("J :move", "'>+1<CR>gv-gv")

-- Update tags file with ctags
nnoremap("<leader>ut", ":! ctags -R -V  --exclude=.git --exclude=node_modules --exclude=tmp --exclude=vendor --exclude=public --exclude=coverage --exclude=railsboxdev *<cr>")

-- Jumpers
nnoremap("<leader>jc", ":Files app/controllers<cr>")
nnoremap("<leader>jm", ":Files app/models<cr>")
