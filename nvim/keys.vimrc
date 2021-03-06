" Copy to clipboard with ctrl+v
vnoremap <C-v> "+y<CR>

" use alt+jkil to move between split/vsplit panels
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>h
tnoremap <A-i> <C-\><C-n><C-w>j
tnoremap <A-l> <C-\><C-n><C-w>k
nnoremap <A-j> <C-w>h
nnoremap <A-k> <C-w>j
nnoremap <A-i> <C-w>k
nnoremap <A-l> <C-w>l

" move among buffers
map <C-J> :bprev<CR>
map <C-L> :bnext<CR>

"Tabs
map <C-M> :tabnext<CR>
map <C-N> :tabprevious<CR>

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
