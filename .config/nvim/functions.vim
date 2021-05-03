function! CurrentFileType()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : WebDevIconsGetFileTypeSymbol()
endfunction

function! CurrentFileFormat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : WebDevIconsGetFileFormatSymbol()
endfunction

function! BuildStatusLine()
  let statusLine = ''
  let statusLine .= '%#PmenuThumb#' . ' ' . fugitive#head() . ' ' . '%#ColorColumn# [%n] %f'
  let statusLine .= '%=' . CurrentFileFormat() . ' | ' . CurrentFileType() . '  '
  let statusLine .= '%#PmenuThumb#' . '  %p%%  %l:%c  '

  return statusLine
endf

function! BuildTabLine()
  let tabLine = ''
  let tabs = tabpagenr()

  for index in range(tabpagenr('$'))
    let tab =  index + 1
    let buffersList = tabpagebuflist(tab)
    let windowNumber = tabpagewinnr(tab)
    let fileName = bufname(buffersList[windowNumber - 1])
    let bufferNumber = buffersList[windowNumber - 1]

    let tabLine .= '%' . tab . 'T'
    let tabLine .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let tabLine .= ' ' . tab . '  '
    let tabLine .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')

    let fileName = fnamemodify(fileName, ':p:tabs')
    if fileName == ''
      let fileName  = 'No Name'
    endif

    let bufmodified = getbufvar(bufferNumber, "&mod")
    if bufmodified
      let fileName .= '*'
    endif

    let tabLine .= fileName . ' '

    let tabLine .= '%#TabLineFill#'
    if (exists("g:tablineclosebutton"))
      let tabLine .= '%=%999XX'
    endif
  endfor

  return tabLine
endf

function! ToggleGStatus()
  if buflisted(bufname('.git/index'))
    bd .git/index
  else
    Git
  endif
endfunction

function! AddPryRails()
  call complete(col('.'), ["require 'pry'; binding.pry", "<% require 'pry'; binding.pry %>"])
  return ''
endfunction

