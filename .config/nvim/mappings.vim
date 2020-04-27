let mapleader = ","
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>:call webdevicons#refresh()<cr>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

noremap <leader>vs :vsplit<cr>
noremap <leader>hs :split<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>tl :tabnext<cr>
noremap <leader>th :tabprevious<cr>
noremap <leader>tq :tabclose<cr>

" Update tags file
nnoremap <leader>ut :! ctags -R -V  --exclude=.git --exclude=node_modules --exclude=tmp --exclude=vendor --exclude=public --exclude=coverage --exclude=railsboxdev *<cr>

" Finders
noremap <leader>fC :Files app/controllers<cr>
noremap <leader>fM :Files app/models<cr>
noremap <leader>fR :Files app/repositories<cr>
noremap <leader>fS :Files app/services<cr>

" fzf.vim
noremap <c-f> :Ag<space>
noremap <c-p> :Files<cr>
noremap <c-b> :Buffers<cr>

" NERDTree
nmap <leader>ne :NERDTreeToggle<cr>
nmap <leader>nf :NERDTreeFind<cr>

" LanguageClient-neovim
nnoremap <leader>cm :call LanguageClient_contextMenu()<CR>
