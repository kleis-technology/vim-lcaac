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
function! s:LcaacRun(cmd, args)
  let output = systemlist('lcaac ' . a:cmd . (len(a:args) ? ' ' . a:args : '') . ' | column -t -s,')
  new
  setlocal buftype=nofile bufhidden=wipe noswapfile
  call setline(1, output)
endfunction

command! -buffer -nargs=+ LcaacAssess  call s:LcaacRun('assess', <q-args>)
command! -buffer -nargs=* LcaacTest    call s:LcaacRun('test', <q-args>)
command! -buffer -nargs=+ LcaacTrace   call s:LcaacRun('trace', <q-args>)
command! -buffer           LcaacVersion call s:LcaacRun('version', '')
