let g:signify_sign_add                 = "\u258F"
let g:signify_sign_delete              = "\u2581"
let g:signify_sign_delete_first_line   = "\u2594"
let g:signify_sign_change              = g:signify_sign_add
let g:signify_sign_changedelete        = g:signify_sign_add
let g:signify_vcs_list                 = ['git']
let g:signify_cursorhold_normal        = 1

highlight SignifySignAdd    ctermfg=28  ctermbg=bg cterm=NONE
highlight SignifySignChange ctermfg=24  ctermbg=bg cterm=NONE
highlight SignifySignDelete ctermfg=167 ctermbg=bg cterm=NONE