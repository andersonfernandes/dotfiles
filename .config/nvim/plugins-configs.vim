" NERDTree
let NERDTreeShowHidden=1

" vim-ruby
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" ale
let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}

" coc.nvim
let g:coc_global_extensions = ['coc-solargraph', 'coc-css', 'coc-elixir', 'coc-json', 'coc-tsserver', 'coc-vetur', 'coc-yaml']
