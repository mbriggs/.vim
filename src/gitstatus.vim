let g:signify_sign_add                 = "\u258F"
let g:signify_sign_delete              = "\u2581"
let g:signify_sign_delete_first_line   = "\u2594"
let g:signify_sign_change              = g:signify_sign_add
let g:signify_sign_changedelete        = g:signify_sign_add
let g:signify_vcs_list                 = ['git']
let g:signify_cursorhold_normal        = 1

set background=dark

augroup sign-column
  autocmd!
  autocmd BufEnter * call s:force_sign_col()
  function! s:force_sign_col()
    sign define dummy
    execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
  endfunction
augroup END
