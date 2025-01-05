"filetype indent plugin on
"let g:coq_settings = { 'auto_start': 'shut-up' }
set termguicolors
lua require 'init'
set nobackup
set nowritebackup
set noexpandtab

"let g:vimtex_view_method = 'zathura'
"let g:opamshare = substitute(system('opam var share'),'\n$','','''')
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_use_net6 = 1
let g:ale_linters = { 'cs': ['OmniSharp']}
"let g:OmniSharp_popup_options = {
"	\ 'winblend': 20,
"	\ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
"	\ 'border': 'rounded'
"	\}
"let g:OmniSharp_popup_mappings = {
"	\ 'sigNext': '<C-n>',
"	\ 'sigPrev': '<C-p>',
"	\ 'pageDown': ['<C-f>', '<PageDown>'],
"	\ 'pageUp': ['<C-b>', '<PageUp>']
"	\}

"set shiftround
"set cindent shiftwidth=3
"set softtabstop=-1
"set tabstop=8
"set noexpandtab
let &viminfofile = expand('$XDG_DATA_HOME/nvim/shada/main.shada')
