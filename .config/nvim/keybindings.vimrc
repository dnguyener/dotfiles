" Leader Key - Space
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quickfix Navigation
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

" Quickfix Navigation
nnoremap <M-n> :bn<CR>
nnoremap <M-p> :bp<CR>


" Add J-k Navigation jumplist
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'gk'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'gj'

" Disable key mappings
lua vim.g.kommentary_create_default_mappings = false
let g:gitgutter_map_keys = 0 

let g:which_key_map =  {}
let g:which_key_map.q = {
    \ 'name': 'quickfix',
    \ 'h': [':cp', 'previous-quickfix'],
    \ 'l': [':cn', 'Next Quickfix'],
    \ }
let g:which_key_map.b = {
    \ 'name': 'buffer',
    \ 'd' : [':bd' , 'delete-buffer']
    \ }
let g:which_key_map.g = {
    \ 'name': 'git',
    \ 'b' : [':Git blame' , 'git-blame'],
    \ 'l' : [':GV'        , 'git-log'],
    \ 's' : [':Gedit :'   , 'git-status'],
    \ }
let g:which_key_map.w = {
    \ 'name': 'window',
    \ 'd' : [':close' , 'delete-window'],
    \ 'm' : [':tabnew %'           , 'maximize-window']
    \ }
"    \ 'd' : ['<C-w>c'    , 'delete-window']      ,

let g:which_key_map.c = {
    \ 'name': 'code',
    \ 'c' : ['<Plug>kommentary_motion_default'         , 'comment'],
    \ 'd' : [':execute "lua vim.lsp.buf.definition()"' , 'definition'],
    \ 'r' : [':execute "lua vim.lsp.buf.references()"' , 'references'],
    \ 'K' : [':execute "lua vim.lsp.buf.hover()"'      , 'hover'],
    \ }

let g:which_key_map.r = {
    \ 'name': 'repl',
    \ 'v' : ['<Plug>(ripple_open_repl)', 'visual-send'],
    \ }
let g:which_key_map.s = {
    \ 'name': 'search',
    \ 's' : [':HopWord', 'search word'],
    \ }

let g:which_key_map.l = {
    \ 'name': 'languageserver',
    \ 'r' : [':execute "lua vim.lsp.stop_client(vim.lsp.get_active_clients())"', 'language-server'],
    \ }
let g:which_key_map.p = {
    \ 'name': 'projects',
    \ 'a' : [':CHADopen /home/chq-andrewn/git/Ansible',       'ansible'],
    \ 'd' : [':CHADopen /home/chq-andrewn/git/documentation', 'documentation'],
    \ }
let g:which_key_map.f = {
    \ 'name': 'file'   ,
    \ 'o' : [':NvimTreeToggle' , 'file_browser'],
    \ 'b' : [':execute "lua require(\"telescope.builtin\").file_browser()"' , 'find-browser'],
    \ 'f' : [':execute "lua require(\"telescope.builtin\").find_files()"'   , 'find-file'],
    \ 'g' : [':execute "lua require(\"telescope.builtin\").live_grep()"'    , 'live-grep'],
    \ 'p' : [":lua require'telescope'.extensions.project.project{}"         , 'open-project'],
    \ 's' : [':execute "lua require(\"telescope.builtin\").grep_string()"'  , 'grep-string'],
    \ }
"    \ 'o' : [':NvimTreeToggle'    , 'file-explorer']      ,
