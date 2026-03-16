if exists('b:did_indent')
  finish
endif
let b:did_indent = 1

let b:undo_indent = 'setlocal indentexpr< indentkeys<'

setlocal indentexpr=LcaacIndent()
setlocal indentkeys=0{,0},!^F,o,O

function! LcaacIndent() abort
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let prev = getline(lnum)
  let cur  = getline(v:lnum)
  let ind  = indent(lnum)

  " Increase indent after opening brace
  if prev =~# '{$'
    let ind += shiftwidth()
  endif

  " Decrease indent for closing brace — align with the matching opener
  if cur =~# '^\s*}'
    let ind -= shiftwidth()
  endif

  return max([ind, 0])
endfunction
