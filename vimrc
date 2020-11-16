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
"Plug 'kyoz/purify', { 'rtp': 'vim' }

" nerd tree
Plug 'preservim/nerdtree'
" nerd comment
Plug 'preservim/nerdcommenter'
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" lightline
Plug 'itchyny/lightline.vim'

"Plug 'valloric/youcompleteme'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'wsdjeg/FlyGrep.vim'

" gruvbox theme
" Plug 'morhetz/gruvbox'
Plug 'morhetz/gruvbox'
" autoclose
Plug 'townk/vim-autoclose'


"solidity
Plug 'tomlion/vim-solidity'
" js
Plug 'pangloss/vim-javascript'

call plug#end()

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

:set number relativenumber
:set nu rnu

autocmd vimenter * colorscheme gruvbox

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ }
      
:set scrolloff=5
:set so=999
:nnoremap j jzz
:nnoremap k kzz
":nnoremap G Gzz
:nnoremap <Down> jzz
:nnoremap <Up> kzz
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END
au! VCenterCursor

