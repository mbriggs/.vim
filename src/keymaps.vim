" tab indents
nnoremap <tab> ==
vnoremap <tab> ==

" kill line
inoremap <c-s-bs> <esc>ddi
noremap <c-s-bs> <esc>ddi

" ret open new line below
inoremap <c-cr> <esc>o
noremap <c-cr> <esc>o

" cmd-ret open new line above
inoremap <c-s-cr> <esc>O
noremap <c-s-cr> <esc>O

" join in insert mode
inoremap <c-s-j> <esc>Ji

" duplicate line
nnoremap <c-d> mpyyp`p

" save
map <c-s> :w<cr>

" duplicate selection
vnoremap <c-d> mpy`>p`p

"new line, but stay in command mode
nnoremap <c-return> mpo<esc>`p

"new line, but stay at current position
inoremap <c-return> <esc><c-return>a

" alt-tab
nmap ,, <c-^>

" close all other splits
nmap - :only<cr>

" CTags
nmap <C-F5> :!ctags --extra=+f -R *<CR><CR>
nmap <C-\> :tnext<CR>

" jump to matching pair
nnoremap <space><space> %

nmap <right> :lnext<cr>
nmap <left> :lprevious<cr>
nmap <down> :cnext<cr>
nmap <up> :cprevious<cr>

"c-backspace to delete word
imap <C-BS> <C-W>
cmap <C-BS> <C-W>

" Hit return to clear a search
nnoremap <silent> <expr> <CR> &bt == "" ? ":nohlsearch<CR>" : "\<CR>"

" %% for current dir
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" front and back of a line
nnoremap <s-h> ^
nnoremap <s-l> $

"toggle spellcheck
nmap <f4> :set spell!<cr>

" why isn't it this by default??
nnoremap <s-y> y$

"resize window
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> _ :exe "resize " . (winheight(0) * 2/3)<CR>

" ,so to source current file
nmap ,so :so %<cr>

"\  goes back a jump
nnoremap \ ,
