execute pathogen#infect()
syntax on
filetype plugin indent on

set clipboard=unnamedplus
set grepprg=grep\ -nH\ $*

command W w

set mouse=a
map <ScrollWheelUp> <C-Y>
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

noremap x "_x
noremap X "_X
inoremap <C-L> <Esc>
nnoremap I i<Return><Esc>
inoremap jk <Esc>
noremap <C-L> <Esc>
nnoremap <S-Tab> <<
nnoremap <Tab> >>
nnoremap j gjzz
nnoremap k gkzz
vnoremap j gjzz
vnoremap k gkzz
inoremap <S-Tab> <C-d>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nnoremap <F2> :! pandoc -o "%:r.pdf" % <CR>
nnoremap <F3> :! evince "%:r.pdf" & exit<CR>

set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set spell
set timeoutlen=1000 ttimeoutlen=0
set termguicolors
colorscheme base16-tomorrow-night
