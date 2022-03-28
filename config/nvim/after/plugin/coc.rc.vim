if !exists('g:coc_enabled') | finish | endif

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
      \'coc-styled-components',
      \'coc-python'
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