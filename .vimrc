set number
set title
set showmatch
syntax on
set tabstop=4
set smartindent
set backspace=start,eol,indent
set wildmenu wildmode=list:full
set cursorline
set laststatus=3

set ignorecase
set smartcase
set wrapscan

highlight Normal ctermbg=black ctermfg=grey
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray
highlight Comment ctermfg=LightGreen
highlight Constant ctermfg=Red
highlight Identifier ctermfg=Cyan
highlight Statement ctermfg=Yellow
highlight Title ctermfg=Magenta
highlight Special ctermfg=Magenta
highlight PreProc ctermfg=Magenta

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
	exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

imap <expr> . pumvisible() ? "\<C-E>.\<C-X>\<C-O>\<C-P>" : ".\<C-X>\<C-O>\<C-P>"


