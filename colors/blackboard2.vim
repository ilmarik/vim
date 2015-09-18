" Vim color file

set bg=dark
"hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "blackboard2"

hi Normal		guifg=#fffffa guibg=#090a07
hi Comment	    guifg=#75715e
hi Constant	    guifg=#f92672 gui=none
hi String       guifg=#73e600 gui=none
hi Statement    guifg=#f8de33 gui=none
hi Entity       guifg=#f9ea00 gui=none
hi Support      guifg=#8fa6cd gui=none
hi LineNr       guifg=#aeaeae guibg=#000000 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi NonText		guifg=#808080 guibg=#0D1021	gui=none
hi Folded       guifg=#AAAAAA guibg=#0D1021
hi Visual       gui=reverse
hi VertSplit    guifg=#100f0c guibg=#100f0c
hi StatusLine   guifg=#f6f3e8 guibg=#444444
hi StatusLineNC guifg=#857b6f guibg=#444444
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none
hi CursorLine   guibg=#100f0c
hi Pmenu        guibg=#002200
hi ExtraWhitespace  guibg=red
hi ColorColumn guibg=#131831 ctermbg=246
hi NonText      guibg=black

hi Define          guifg=#333333
hi Function        guifg=#f9ea00 gui=bold
hi link Structure       Support
hi Special         guifg=blue
hi link Test            Support

hi Character       guifg=#4beaf9 gui=none
hi link Number          Constant
hi link Boolean         Constant

hi link Float           Number

hi Conditional     guifg=#4beaf9
hi link StorageClass    Statement
hi Operator        guifg=#4beaf9
hi link Statement       Statement
