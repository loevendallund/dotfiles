" Fern Settings
nnoremap <silent> <C-B> :Fern -drawer . -width=40 -toggle <CR>

let g:fern#renderer = "nerdfont"

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"augroup fern-custom
"  autocmd! *
"  autocmd FileType fern call s:init_fern()
"augroup END

" Function that remaps enter and backspace to enter/leave in fern drawer
function! s:init_fern() abort
  nmap <buffer><expr>
      \ <Plug>(fern-my-expand-or-collapse)
      \ fern#smart#leaf(
      \   "\<Plug>(fern-action-collapse)",
      \   "\<Plug>(fern-action-expand)",
      \   "\<Plug>(fern-action-collapse)",
      \ )
  nmap <buffer><expr>
        \ <Plug>(fern-my-collapse-or-leave)
        \ fern#smart#drawer(
        \   "\<Plug>(fern-action-collapse)",
        \   "\<Plug>(fern-action-leave)",
        \ )
  nmap <buffer><nowait> <CR> <Plug>(fern-my-expand-or-collapse)
  nmap <buffer><nowait> <BS> <Plug>(fern-my-collapse-or-leave)
endfunction

"Vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100

" Conquour of completion settings
inoremap <expr> <Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
inoremap <silent><expr> <C-space> coc#refresh()
"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
"show all diagnostics.
nnoremap <silent> <space>d :<C-U>CocList diagnostics<CR>
"manage extensions.
nnoremap <silent> <space>e :<C-U>CocList extensions<CR>

nnoremap <silent> <leader>h :call CocActionAsync('doHover')<CR>
