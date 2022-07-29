-- coc.nvim
vim.g.coc_global_extensions = {
  'coc-solargraph',
  'coc-css',
  'coc-elixir',
  'coc-json',
  'coc-tsserver',
  'coc-vetur',
  'coc-yaml',
  'coc-html',
  'coc-snippets',
  'coc-styled-components',
  'coc-python',
  'coc-lua'
}

vim.cmd([[
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  inoremap <silent><expr> <TAB>
        \ pumvisible() ? coc#_select_confirm() :
        \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
]])

vim.g.coc_snippet_next = '<tab>'
