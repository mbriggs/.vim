"statusline setup
set statusline=%f       "tail of the filename

set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag

set statusline+=\ \ \ %{FileSize()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set laststatus=2


function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction


function! FileSize()
  let bytes = getfsize(expand("%:p"))
  let kb = 1024.0
  let mb = kb * 1000.0
  let gb = mb * 1000.0

  if bytes <= 0
    return ""
  endif

  if bytes > gb
    return printf('%.2f', bytes / gb) . "gb"
  endif

  if bytes > mb
    return printf('%.2f', bytes / mb) . "mb"
  endif

  if bytes > kb
    return printf('%.2f', bytes / kb) . "kb"
  endif

  return bytes
endfunction

