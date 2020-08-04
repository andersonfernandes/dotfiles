" NERDTree
let NERDTreeShowHidden=1

" vim-ruby
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['~/.rvm/gems/ruby-2.5.1/bin/solargraph', 'stdio'],
    \ }

let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}
