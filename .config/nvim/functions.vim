function! CurrentFileType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : WebDevIconsGetFileTypeSymbol()
endfunction

function! CurrentFileFormat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : WebDevIconsGetFileFormatSymbol()
endfunction

function! BuildStatusLine()
  let statusLine = ''
  let statusLine .= '%#PmenuSel#' . ' ' . fugitive#head() . ' ' . '%#ColorColumn# [%n] %f'
  let statusLine .= '%=' . CurrentFileFormat() . ' | ' . CurrentFileType() . ' | %{&fileencoding?&fileencoding:&encoding}  '
  let statusLine .= '%#PmenuThumb#' . '  %p%%  %l:%c  '

  return statusLine
endf
