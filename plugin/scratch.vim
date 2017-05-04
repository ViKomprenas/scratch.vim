" Scratch buffer command
" Maintainer: Viko <viko@vikomprenas.com>
" License: This file is in the public domain (Creative Commons Zero)

if exists("g:loaded_scratch")
    finish
endif
let g:loaded_scratch = 1

let s:cpo = &cpo
set cpo&vim

func! <SID>scratch()
    belowright split
    resize 3
    enew
    setlocal buftype=nofile bufhidden=delete
endf
command! -bar Scratch call <SID>scratch()

let &cpo = s:cpo
unlet s:cpo
