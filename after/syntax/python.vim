" Disable current syntax temporarily.
let saved_syntax = b:current_syntax
unlet! b:current_syntax

" Load SQL syntax.
syntax include @SQL syntax/sql.vim

" Restore original syntax.
let b:current_syntax = saved_syntax
unlet! saved_syntax

" Set SQL to match in any python string that uses double quotes and begin with 
syntax region sqlSnippet matchgroup=pythonTripleQuotes start=/"""/ end=/"""/ contains=@SQL
