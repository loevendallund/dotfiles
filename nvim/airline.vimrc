"Airline
let g:airline_theme='violet'
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = "\uE0B8"
let g:airline_left_alt_sep = "\uE0B9"
let g:airline_right_sep = "\uE0BA"
let g:airline_right_alt_sep = "\uE0BB"
let g:airline#extensions#tabline#left_sep = "\uE0BC"
let g:airline#extensions#tabline#left_alt_sep = "\uE0BD"

let g:airline_symbols.crypt = ''

let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = "\uF9C5"
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = ''
