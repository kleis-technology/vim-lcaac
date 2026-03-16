if exists('b:current_syntax')
  finish
endif

" Comments
syn region lcaacBlockComment start='/\*' end='\*/' contains=lcaacTodo
syn match  lcaacLineComment  '//.*$'    contains=lcaacTodo
syn keyword lcaacTodo contained TODO FIXME NOTE

" Annotation
syn match lcaacAnnotation '@cached'

" Top-level structure keywords
syn keyword lcaacKeyword process substance unit datasource test
syn keyword lcaacKeyword package import

" Block keywords
syn keyword lcaacBlock variables params labels
syn keyword lcaacBlock products inputs emissions land_use resources impacts meta
syn keyword lcaacBlock given assert schema

" Operator-like keywords (used inline in expressions)
syn keyword lcaacKeyword from match for_each allocate
syn keyword lcaacKeyword between and

" Builtin functions
syn keyword lcaacBuiltin lookup default_record sum

" Type keywords (substance types — capitalized)
syn keyword lcaacType Emission Resource Land_use

" Field keywords (always followed by '=')
syn keyword lcaacField name type compartment sub_compartment reference_unit
syn keyword lcaacField symbol alias_for dimension location

" Strings
syn region lcaacString start='"' end='"' skip='\\"'

" Numbers — optional sign, integer or float, optional exponent
syn match lcaacNumber '-\?\d\+\(\.\d\+\)\?\([Ee][+-]\?\d\+\)\?'

" Operators and punctuation
syn match lcaacOperator '[+\-*/^]'
syn match lcaacOperator '='

" Braces / parens — kept as normal but can be linked distinctly
syn match lcaacDelimiter '[{}()\[\],.]'

" Highlight links
hi def link lcaacBlockComment Comment
hi def link lcaacLineComment  Comment
hi def link lcaacTodo         Todo
hi def link lcaacAnnotation   PreProc
hi def link lcaacKeyword      Keyword
hi def link lcaacBlock        Structure
hi def link lcaacBuiltin      Function
hi def link lcaacType         Type
hi def link lcaacField        Identifier
hi def link lcaacString       String
hi def link lcaacNumber       Number
hi def link lcaacOperator     Operator
hi def link lcaacDelimiter    Delimiter

let b:current_syntax = 'lcaac'
