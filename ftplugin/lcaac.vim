if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

" Undo settings when switching filetype
let b:undo_ftplugin = 'setlocal commentstring< comments< shiftwidth< expandtab< tabstop<'
      \ . ' | delcommand LcaacAssess | delcommand LcaacTest | delcommand LcaacTrace | delcommand LcaacVersion'

" Comments
setlocal commentstring=//\ %s
setlocal comments=://,s1:/*,mb:*,ex:*/

" Indentation — 4 spaces, matching the style in the tutorials
setlocal shiftwidth=4
setlocal expandtab
setlocal tabstop=4

" CLI commands
command! -buffer -nargs=+ LcaacAssess  !lcaac assess <args>
command! -buffer -nargs=* LcaacTest    !lcaac test <args>
command! -buffer -nargs=+ LcaacTrace   !lcaac trace <args>
command! -buffer           LcaacVersion !lcaac version
