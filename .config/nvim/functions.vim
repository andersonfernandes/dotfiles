" lightline
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" vim-multiple-cursors
function! Multiple_cursors_before()
  exe 'call deoplete#toggle()'
endfunction

function! Multiple_cursors_after()
  exe 'call deoplete#toggle()'
endfunction
