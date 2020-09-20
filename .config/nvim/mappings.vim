let mapleader = " "
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>:call webdevicons#refresh()<cr>

nnoremap Q <nop>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>tq :tabclose<cr>

" Moves a visual block
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Update tags file with ctags
nnoremap <leader>ut :! ctags -R -V  --exclude=.git --exclude=node_modules --exclude=tmp --exclude=vendor --exclude=public --exclude=coverage --exclude=railsboxdev *<cr>

" Jumpers
noremap <leader>jc :Files app/controllers<cr>
noremap <leader>jm :Files app/models<cr>
noremap <leader>jr :Files app/repositories<cr>
noremap <leader>js :Files app/services<cr>

" fzf.vim
noremap <c-f> :Ag<space>
noremap <c-p> :Files<cr>
noremap <c-b> :Buffers<cr>

" NERDTree
nmap <leader><space> :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>

" vim-test
nmap <silent> <leader>tt :TestFile -strategy=neovim<CR>
nmap <silent> <leader>tl :TestNearest -strategy=neovim<CR>

" vim-fugitive
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>gs :call ToggleGStatus()<CR>

" fzf-checkout
nmap <leader>gc :GBranches<CR>

" pry rails
:abbr pry require 'pry'; binding.pry<ESC>m0<CR>
map <leader>p :call PryRails()<cr>