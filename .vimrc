"autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
"highlight ExtraWhitespace guibg=red
"hi LongLine guibg=#0a165e

colorscheme mustang
filetype plugin indent on

autocmd FileType *.html set ft=xhtml " For SnipMate
autocmd FileType htmldjango set ft=htmldjango.django " For SnipMate

"set background=dark
"syntax on
"colorscheme django
"filetype on            " enables filetype detection
"filetype plugin on     " enables filetype specific plugins
set ruler
"let python_highlight_all=1
set backspace=start,eol,indent
set clipboard+=unnamed
set fileformats=unix,dos,mac
set lcs=tab:>-,eol:<,nbsp:%,trail:-,extends:>,precedes:<
set noerrorbells
set smartindent

set wildignore=*.dll,*.pyc
set wildmenu
set wildmode=list:longest

"set number
set numberwidth=4

set scrolloff=1
set completeopt=longest,menuone
"set completeopt=menu,longest
set nowrap
set linespace=1
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

set guioptions=ai
"set guifont=Inconsolata\ Medium\ 14
set guifont=Terminus\ 10
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
"set guifont=Monaco\ 12
"set guifont=Monospace\ 12

set title
set mousehide
set hlsearch
set ignorecase
set incsearch

set foldenable
set foldmethod=indent
set foldignore=
set foldlevel=0
"set foldcolumn=1

set tags=~/workspace/**/tags
set laststatus=2
set statusline=%F%=[%l/%L:%c][%p%%][%{&encoding}]%y
set cursorline
au InsertEnter * hi StatusLine guifg=#00CCFF guibg=#444444 gui=bold
au InsertLeave * hi StatusLine guifg=#f6f3e8 guibg=#444444 gui=reverse
map <leader>d :execute 'NERDTreeFromBookmark w'<CR>
map <leader>m :execute 'NERDTreeFromBookmark m'<CR>
"autocmd BufRead,BufNewFile *.js set ft=javascript.jquery
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set ft=python.django " For SnipMate
" Make ',e' (in normal mode) give a prompt for opening files
" in the same dir as the current buffer's file.
if has("unix")
    map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
else
    map ,e :e <C-R>=expand("%:p:h") . "\\" <CR>
endif
map <A-n> :tabnew<CR>
map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
map <C-w> :tabclose<CR>
map <A-w> :bd<CR>
nnoremap <C-a> gg<s-v><s-g>
"For vimrc edit/reload"
nmap <Leader>s :source $MYVIMRC<CR>
nmap <Leader>v :e $MYVIMRC<CR>
nnoremap <silent> <F2> :FufFileWithCurrentBufferDir<CR>
" Press F4 to toggle highlighting on/off.
nnoremap <silent> <F4> :set hls!<CR>
nnoremap <silent> <F3> :!python $HOME/.vim/plugin/pep8.py --show-source --statistics %<CR>
nnoremap <silent> <F5> :!python %<CR>
nnoremap <silent> <F6>
      \ :if exists('w:long_line_match') <Bar>
      \   silent! call matchdelete(w:long_line_match) <Bar>
      \   unlet w:long_line_match <Bar>
      \ elseif &textwidth > 0 <Bar>
      \   let w:long_line_match = matchadd('ErrorMsg', '\%>'.&tw.'v.\+', -1) <Bar>
      \ else <Bar>
      \   let w:long_line_match = matchadd('ErrorMsg', '\%>80v.\+', -1) <Bar>
      \ endif<CR>
nnoremap <silent> <F7> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F12> :!python $HOME/.vim/shortcuts.py<CR>
" bind tidy to vim
set makeprg=tidy\ -quiet\ -errors\ %
set errorformat=line\ %l\ column\ %v\ -\ %m

"set foldtext=MyFoldText()
""function MyFoldText()
""    set foldlevelstart=1
""    let line = getline(v:foldstart)
""    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
""    return v:folddashes . sub
"endfunction
"Moving lines like in NetBeans (original keys -> <M-j>)"
nnoremap <c-down> mz:m+<CR>`z==
nnoremap <c-up> mz:m-2<CR>`z==
inoremap <c-down> <Esc>:m+<CR>==gi
inoremap <c-up> <Esc>:m-2<CR>==gi
vnoremap <s-down> :m'>+<CR>gv=`<my`>mzgv`yo`z
vnoremap <c-up> :m'<-2<CR>gv=`>my`<mzgv`yo`z
"Copying line up or down"
nnoremap <c-s-up> yypkk<CR>
nnoremap <c-s-down> yypk<CR>
" traditional ctrl+s for saving :)"
nnoremap <c-S> :w<CR>
inoremap <c-S> <ESC>:w<CR>a
vnoremap <c-S> :w<CR>
"remap of ctrl+n to more known ctrl+space"
inoremap <c-space> <c-N>
nnoremap <c-tab> <c-w>w
"close all opened tabs and vim
nnoremap <c-esc> :tabonly<CR>:q!<CR>
""let html_my_rendering=1
" changing statusline colors when changing vim mode
"function! InsertStatuslineColor(mode)
"  if a:mode == 'i'
    "hi statusline guibg=magenta
  "elseif a:mode == 'r'
    "hi statusline guibg=blue
  "else
    "hi statusline guibg=red
  "endif
"endfunction
"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertLeave * hi statusline guibg=green
" default the statusline to green when entering Vim
" mark lines longer than 80
"au!BufRead *.py setlocal et ts=4 sw=4 makeprg=pep8\ --repeat\ --ignore=E501\ %
"function! Kompiluj()
    "silent lmake
    ""redraw!
    "if len(getloclist(0))
        "lopen
    "else
        "lclose
    "endif
"endfunction

"autocmd BufWritePost *.py call Kompiluj()

"nnoremap <silent><F9> :call Kompiluj()<CR>

" Show trailing whitepace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
nm d<F3> lF<df>
nm d<F3> lF d2f"
" Left move attribut
nm <C-S-Left> d<F3>
" Right move attribut
nm <C-S-Right> d<F3>/ \\|><cr>:nohl<cr>P

highlight RedundantSpaces ctermbg=Red guisp=Orange guifg=Orange guibg=Orange
match RedundantSpaces /\s\+$\| \+\ze\t/

if has("gui_running")
    highlight SpellBad term=underline gui=undercurl guisp=Orange guifg=Orange
endif
autocmd BufEnter * :lcd %:p:h " cd na katalog, w którym znajduje się aktualny bufor

"let g:pydiction_location = '/home/gregory/.vim/ftplugin/pydiction/complete-dict'
