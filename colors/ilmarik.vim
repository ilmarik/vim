" Vim color scheme
"
" Name:         ilmarik.vim
" Maintainer:   Gregory Karaban <grzegorzkaraban@gmail.com>
" Last Change:  11 November 2009
" License:      public domain
" Version:      1.0

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "ilmarik"

if has("gui_running")
    set guifont=Monaco\ 10
    ""set list listchars=eol:¬,tab:»\ ,trail:·,extends:·
    "GUI Colors
    hi Cursor guifg=Black guibg=Gold  "the character under the cursor
    hi CursorIM guifg=Black   "	like Cursor, but used when in IME mode |CursorIM|
""    hi CursorColumn guibg=#191929   "	the screen column that the cursor is in when 'cursorcolumn' is set
    hi CursorLine guifg=Black   "	the screen line that the cursor is in when 'cursorline' is set
    hi Constant guifg=DarkGreen
    hi Directory guifg=Black   "	directory names (and other special names in listings)
    hi DiffAdd guifg=Black   "		diff mode: Added line |diff.txt|
    hi DiffChange guifg=Black   "	diff mode: Changed line |diff.txt|
    hi DiffDelete guifg=Black   "	diff mode: Deleted line |diff.txt|
    hi DiffText guifg=Black   "	diff mode: Changed text within a changed line |diff.txt|
    hi ErrorMsg guifg=Black   "	error messages on the command line
    hi VertSplit guifg=Black   "	the column separating vertically split windows
    hi Folded guibg=#333333   "		line used for closed folds
    hi FoldColumn guifg=Black   "	'foldcolumn'
    hi SignColumn guifg=Black   "	column where |signs| are displayed
    hi IncSearch guifg=Black   "	'incsearch' highlighting; also used for the text replaced with ":s///c"
    hi LineNr guifg=#666677 guibg=#222233   "		Line number for ":number" and ":#" commands, and when 'number' option is set.
    hi MatchParen guifg=Black   "	The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    hi ModeMsg guifg=Black   "		'showmode' message (e.g., "-- INSERT --")
    hi MoreMsg guifg=Black   "		|more-prompt|
    hi NonText guifg=#333333 guibg=#0A0A1A  "		'~' and '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    hi Normal guifg=#111122   "		normal text
    hi Pmenu guifg=Black   "		Popup menu: normal item.
    hi PmenuSel guifg=Black   "	Popup menu: selected item.
    hi PmenuSbar guifg=Black   "	Popup menu: scrollbar.
    hi PmenuThumb guifg=Black   "	Popup menu: Thumb of the scrollbar.
    hi Question guifg=Black   "	|hit-enter| prompt and yes/no questions
    hi Search guifg=Black guibg=LightBlue   "		Last search pattern highlighting (see 'hlsearch').  Also used for highlighting the current line in the quickfix window and similar items that need to stand out.
    hi SpecialKey guifg=Black   "	Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'.  Generally: text that is displayed differently from what it really is.
    hi SpellBad guifg=Black   "	Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
    hi SpellCap guifg=Black   "	Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
    hi SpellLocal guifg=Black   "	Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.
    hi SpellRare guifg=Black   "	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.
    hi StatusLine guifg=Black   "	status line of current window
    hi StatusLineNC guifg=Black   "	status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    hi TabLine guifg=Black   "		tab pages line, not active tab page label
    hi TabLineFill guifg=Black   "	tab pages line, where there are no labels
    hi TabLineSel guifg=Black   "	tab pages line, active tab page label
    hi Title guifg=Black   "		titles for output from ":set all", ":autocmd" etc.
    hi Visual guifg=Black   "		Visual mode sele
    hi Type guifg=Magenta
    hi StorageClass guifg=Red
""    hi StorageClass guifg=#09A900
    hi Comment guifg=#999999
    hi Statement guifg=lightblue
    hi PreProc guifg=#AAAAAA gui=bold
    hi Todo guifg=Black guibg=darkred
    hi Identifier guifg=Blue
    "HTML"
    ""let html_my_rendering=1
    ""hi htmlTitle guifg=Black gui=bold
    ""hi htmlH1 guifg=Black gui=bold
    ""hi htmlH2 guifg=Black gui=bold
    ""hi htmlH3 guifg=Black gui=bold
    ""hi htmlH4 guifg=Black gui=bold
    ""hi htmlH5 guifg=Black gui=bold
    ""hi htmlH6 guifg=Black gui=bold
    ""hi htmlBold guifg=Black gui=bold
    ""hi htmlBoldItalic guifg=Black gui=bold,italic
    ""hi htmlBoldUnderline guifg=Black gui=bold,underline
    ""hi htmlBoldUnderlineItalic guifg=Black gui=bold,underline,italic
    ""hi htmlUnderline guifg=Black gui=underline
    ""hi htmlUnderlineItalic guifg=Black gui=underline,italic
    ""hi htmlItalic guifg=Black gui=italic
    ""hi htmlLink guifg=Black gui=underline
    ""hi htmlStatement guifg=Black
    ""hi htmlString guifg=Black
    ""hi htmlStatic guifg=Black
    ""hi htmlTagName guifg=Black
    ""hi htmlSpecialTagName guifg=Black
    ""hi htmlTagN guifg=Black
    ""hi htmlArg guifg=Black
    "CSS"
    ""hi cssTagName guifg=Black 
    ""hi cssCommonAttr  guifg=Black
    ""hi cssComment  guifg=Black
    ""hi cssColor guifg=Black
    ""hi cssClassName guifg=Black
    ""hi cssIdentifier   guifg=Black
    ""hi cssBraces  guifg=Black
    ""hi cssBraceError  guifg=Black
    ""hi cssError guifg=Black
    ""hi cssFunction  guifg=Black
    ""hi cssURL  guifg=Black
    ""hi cssImportant  guifg=Black
    ""hi cssSelectorOp  guifg=Black
    ""hi cssSelectorOp2  guifg=Black
    ""hi cssValueInteger  guifg=Black
    ""hi cssValueNumber  guifg=Black
    ""hi cssValueLength  guifg=Black
    ""hi cssValueInteger guifg=Black
    ""hi cssValueNumber guifg=Black
    ""hi cssValueLength guifg=Black
    ""hi cssValueAngle guifg=Black
    ""hi cssValueTime guifg=Black
    ""hi cssValueFrequency guifg=Black

    "Python"
""    hi pythonStatement guifg=Red guibg=Black 
""    hi pythonFunction guifg=Red guibg=Black 
""    hi pythonDecoratorName guifg=Red guibg=Black
""    hi pythonConditional guifg=Red guibg=Black
""    hi pythonRepeat guifg=Red guibg=Black	
""    hi pythonString guifg=Red guibg=Black		
""    hi pythonRawString guifg=Red guibg=Black	
""    hi pythonEscape guifg=Red guibg=Black		
""    hi pythonOperator guifg=Red guibg=Black	
""    hi pythonPreCondit guifg=Red guibg=Black	
""    hi pythonComment guifg=Red guibg=Black	
""    hi pythonTodo guifg=Red guibg=Black		
""    hi pythonDecorator guifg=Red guibg=Black	
""    hi pythonNumber guifg=Red guibg=Black
""    hi pythonBuiltin guifg=Red guibg=Black	
""    hi pythonException guifg=Red guibg=Black	
""    hi pythonSpaceError guifg=#EEEEEE
end

" nice light blue 007EFF
