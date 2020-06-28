" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" keybinds
map <C-n> :NERDTreeToggle<CR>
map ; :Files<CR>



call plug#begin('~/.vim/plugged')
" purify theme
Plug 'kyoz/purify', { 'rtp': 'vim' }
" nerd comment
Plug 'preservim/nerdcommenter'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" lightline
Plug 'itchyny/lightline.vim'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'wsdjeg/FlyGrep.vim'
Plug 'morhetz/gruvbox'
call plug#end()

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

:set number relativenumber
:set nu rnu

autocmd vimenter * colorscheme gruvbox

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }

