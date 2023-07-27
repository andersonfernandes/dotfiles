-- coc.nvim
vim.g.coc_global_extensions = {
  'coc-solargraph',
  'coc-css',
  'coc-elixir',
  'coc-json',
  'coc-tsserver',
  'coc-prettier',
  'coc-eslint',
  'coc-yaml',
  'coc-html',
  'coc-snippets',
  'coc-python',
  'coc-lua',
  'coc-pairs',
  'coc-go'
}

vim.cmd([[
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ?
    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
]])

vim.g.coc_snippet_next = '<tab>'

-- coc-prettier cmd
vim.api.nvim_create_user_command('Prettier', ':CocCommand prettier.forceFormatDocument', { nargs = 0 })
