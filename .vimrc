set nocompatible
"set background=light
set background=dark
"colorscheme blackboard
colorscheme solarized

filetype plugin indent on
"set lines=110 columns=300

"autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ 

"if has("gui_running")
"    hi SpellBad term=underline gui=undercurl guisp=Orange guifg=Orange
"endif

autocmd FileType *.html set ft=xhtml " For SnipMate
autocmd FileType htmldjango set ft=htmldjango.django " For SnipMate
"autocmd BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
"autocmd BufRead,BufNewFile *.js set ft=javascript.jquery
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set ft=python.django " For SnipMate

"set background=dark
"syntax on
"colorscheme django
"filetype on            " enables filetype detection
"filetype plugin on     " enables filetype specific plugins
set ruler
"let python_highlight_all=1
" set backspace=start,eol,indent
set number
set autoindent
set smartindent
set backspace=indent,eol,start
set clipboard+=unnamed
set fileformats=unix,dos,mac
"set lcs=tab:>-,eol:<,nbsp:%,trail:-,extends:>,precedes:<
""set list listchars=eol:¬,tab:»\ ,trail:·,extends:·
set noerrorbells

set nobackup
set nowritebackup
set noswapfile

set wildignore=*.dll,*.pyc
set wildmenu
set wildmode=list:longest

"set numberwidth=4
set scrolloff=1
set completeopt=longest,menuone
"set completeopt=menu,longest
set nowrap
set linespace=1
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
"set textwidth=80
set colorcolumn=+1

set guioptions=ai
"set guifont=Inconsolata\ Medium\ 10
set guifont=Terminus\ 12
"set guifont=Terminus\ Regular\ 14
"set guifont=Terminess\ Powerline\ 12
"set guifont=Ubuntu\ Mono\ 12
"set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
"set guifont=Ubuntu\ Mono\ for\ VimPowerline\ 12
"set guifont=Terminus\ Powerline\ Regular\ 12
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
"set guifont=Monaco\ 11
"set guifont=Monospace\ 11
"
let g:Powerline_symbols = 'fancy'

set title
set mousehide
set hlsearch
set ignorecase
set incsearch

set foldenable
set foldmethod=indent
set foldignore=
set foldlevel=10

"set tags=~/workspace/**/tags
set laststatus=2
set statusline=%F%=[%v][%l/%L][%p%%][%{&encoding}]%y
set cursorline
set wak=no
au InsertEnter * hi StatusLine guifg=#00CCFF guibg=#444444 gui=bold
au InsertLeave * hi StatusLine guifg=#f6f3e8 guibg=#444444 gui=reverse

hi Directory guifg=#FF0000 ctermfg=red
" Make ',e' (in normal mode) give a prompt for opening files
" in the same dir as the current buffer's file.
if has("unix")
    map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
else
    map ,e :e <C-R>=expand("%:p:h") . "\\" <CR>
endif
"For vimrc edit/reload"
nmap <Leader>s :source $MYVIMRC<CR>
nmap <Leader>v :e $MYVIMRC<CR>
nmap <Leader>c :e $HOME/.vim/colors/blackboard.vim<CR>
map <leader>d :execute 'NERDTreeFromBookmark w'<CR>
map <leader>m :execute 'NERDTreeFromBookmark m'<CR>
map <A-n> :tabnew<CR>
map <C-left> :tabp<CR>
map <C-right> :tabn<CR>
nnoremap <a-left> <C-W><C-h>
nnoremap <a-right> <C-W><C-l>
nnoremap <a-up> <C-W><C-k>
nnoremap <a-down> <C-W><C-j>
"map <C-w> :tabclose<CR>
map <A-w> :bd<CR>
map <leader>m :execute 'NERDTreeFromBookmark m'<CR>
"nnoremap <silent> <F2> :FufFileWithCurrentBufferDir<CR>
" Press F4 to toggle highlighting on/off.
"nnoremap <silent> <F3> :!python $HOME/.vim/plugin/pep8.py --show-source --statistics %<CR>
nnoremap <silent> <F3> :!pep8 --show-source --statistics %<CR>
nnoremap <silent> <F4> :set hls!<CR>
autocmd filetype python nnoremap <silent> <F5> :!python %<CR>
"nnoremap <silent> <F5> :!python /home/ilmarik/workspace/3dgame/game/start.py<CR>
autocmd filetype python nnoremap <silent> <F6> :!python /home/ilmarik/workspace/medievalike/setup.py build_ext --inplace<CR>
"nnoremap <silent> <F7> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F12> :!python $HOME/.vim/shortcuts.py<CR>
" bind tidy to vim
set makeprg=tidy\ -quiet\ -errors\ %
set errorformat=line\ %l\ column\ %v\ -\ %m

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
nnoremap <c-s-tab> <c-s-w>w
"close all opened tabs and vim
nnoremap <c-esc> :tabonly<CR>:q!<CR>
" Show trailing whitepace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
nm d<F3> lF<df>
nm d<F3> lF d2f"
" Left move attribut
nm <C-S-Left> d<F3>
" Right move attribut
nm <C-S-Right> d<F3>/ \\|><cr>:nohl<cr>P

"let g:pydiction_location = '/home/ilmarik/.vim/ftplugin/pydiction/complete-dict'
let g:airline_powerline_fonts = 1

function ShowSpaces(...)
    let @/='\v(\s+$)|( +\ze\t)'
    let oldhlsearch=&hlsearch
    if !a:0
        let &hlsearch=!&hlsearch
    else
        let &hlsearch=a:1
    end
    return oldhlsearch
endfunction

function TrimSpaces() range
    let oldhlsearch=ShowSpaces(1)
    execute a:firstline.",".a:lastline."substitute ///gec"
    let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F4>     :ShowSpaces 1<CR>
nnoremap <S-F4>   m`:TrimSpaces<CR>``
vnoremap <S-F4>   :TrimSpaces<CR>

nnoremap <c-P> :CtrlP<CR>
inoremap <c-P> <ESC>:CtrlP<CR>
vnoremap <c-P> :CtrlP<CR>

""""""""""""""""""""""""""""""""""""""""""""
" C language help

" set filetype for C files
augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c
    autocmd FileType c setlocal cindent
augroup END
" ctrl+space intelisense
autocmd filetype c inoremap <c-space> <c-x><c-o>
" ctrl+g to open .h file under the cursor in new tab
map <silent> <C-G> <C-W>gf:tabm 999<CR>
" improve make
autocmd filetype c setlocal makeprg=gcc\ -Wall\ -Wextra\ -o\ %<\ %
" set make under f5
autocmd filetype c nnoremap <F5> :make! && ./%<<cr>
autocmd filetype c nnoremap <F6> :make!<cr>

"""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

call pathogen#infect()
