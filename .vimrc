syn on
set t_Co=256
set nocompatible "don't need to keep compatibility with Vi
set ruler
set wrap
set hidden      "improve history and buffer
set history=1000
set number
:filetype plugin on
colorscheme ir_black
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20

"For Pathogen." 
"call pathogen#infect()"

"For Ragtag
"let g:ragtag_global_maps = 1

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set list listchars=tab:·\ ,trail:•,nbsp:•

"Key Mappings I figured out with the help of Mr. Internet
"imap ii <esc>
map ; :
noremap ;; ;

imap <C-a> <esc>

"For the Markdown Text
augroup mkd
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&g spell spelllang=en_us nu!  
augroup END
map <leader>p :Mm<CR>

"Wrapping Words

set wrap
set lbr

let mapleader = " "
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" edit vimrc in a virtical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr> 
"" open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l 

let g:vimroom_navigational_key = 1
let g:vimroom_ctermbackground = "bg"
let g:vimroom_guibackground = "black"

"For Snipmate
"au BufNewFile,BufRead *.mkd setlocal filetype=markdown
"autocmd FileType python set ft=python.django " For SnipMate
"autocmd FileType html set ft=htmldjango.html " For SnipMate
set fileformats=unix
