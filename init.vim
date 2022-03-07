call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'vimlab/split-term.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'shaunsingh/nord.nvim'

call plug#end()


autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitright

" Auto-complete suggestion scrolling mapped to <tab>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Choosing nvim theme"
let g:airline_theme='nord_minimal'

" disable autocompletion in jedi, because we use deoplete for completion
let g:jedi#completions_enabled = 1

" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = ''right'"

"Using pylint to check code"
let g:neomake_python_enabled_makers = ['flake8']

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

"setting bash as default shell"
let g:split_term_default_shell = "zsh"
"let g:split_term_default_shell = "bash"

"Mapping the leader key
let mapleader="\<SPACE>"

" Example config for nord theme
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false


call neomake#configure#automake('nrwi', 500)

colorscheme nord
"set background=dark

" Adding a new way to save"
nnoremap <C-s> :w<CR>
" Adding a new way to quit"
nnoremap <C-Q> :wq!<CR>
