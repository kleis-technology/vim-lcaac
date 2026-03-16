if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

" Undo settings when switching filetype
let b:undo_ftplugin = 'setlocal commentstring< comments< shiftwidth< expandtab< tabstop<'

" Comments
setlocal commentstring=//\ %s
setlocal comments=://,s1:/*,mb:*,ex:*/

" Indentation — 4 spaces, matching the style in the tutorials
setlocal shiftwidth=4
setlocal expandtab
setlocal tabstop=4
