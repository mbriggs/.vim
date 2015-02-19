
nnoremap <c-t> :ProjectRootExe CommandT<CR>
inoremap <c-t> <esc>:ProjectRootExe CommandT<CR>
nnoremap b :CommandTBuffer<cr>
let g:CommandTCancelMap = ['<ESC>', '<C-c>']
let g:CommandTMaxFiles=80000
let g:CommandTMaxDepth=25
let g:CommandTMatchWindowAtTop=1
let g:CommandTSelectNextMap=["<c-n>"]
let g:CommandTSelectPrevMap=["<c-p>"]
let g:CommandTMaxHeight=30
