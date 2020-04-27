set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %{fugitive#head()}
set statusline+=\ 

set statusline+=%#ColorColumn#
set statusline+=\ [%n]
set statusline+=\ %f

set statusline+=%=
set statusline+=\ %{MyFileformat()}
set statusline+=\ \| 
set statusline+=\ %{MyFiletype()}
set statusline+=\ \| 
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ 
set statusline+=\ 

set statusline+=%#PmenuThumb#
set statusline+=\ 
set statusline+=\ %p%%
set statusline+=\ 
set statusline+=\ %l:%c
set statusline+=\ 
set statusline+=\ 
