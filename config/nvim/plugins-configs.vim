" NERDTree
let NERDTreeShowHidden=1

" vim-ruby
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

" coc.nvim
let g:coc_global_extensions = [
      \'coc-solargraph',
      \'coc-css',
      \'coc-elixir',
      \'coc-json',
      \'coc-tsserver',
      \'coc-vetur',
      \'coc-yaml',
      \'coc-html',
      \'coc-snippets',
      \'coc-styled-components'
      \]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" fzf
let g:fzf_layout = { 'window': {'width': 0.7, 'height': 0.5 } }
let $FZF_DEFAULT_OPTS='--reverse'
