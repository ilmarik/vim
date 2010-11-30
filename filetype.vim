" my filetype file
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.html		setfiletype htmldjango.django.xhtml
"    au! BufRead,BufNewFile *.tpl		setfiletype htmldjango.django.xhtml
augroup END
