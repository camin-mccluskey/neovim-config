" Options
set background=dark " apply colour set for dark screens
set clipboard=unnamedplus " allows pasting between clipboards
set completeopt=noinsert,menuone,noselect " modifies autocomplete menu to work like an IDE
set cursorline " highlights current line in editor
set hidden " hides unused buffers
set inccommand=split " show replacements in a split screen, before applying to file
set mouse=a " allows mouse use in editor
set number " shows line numbers
set relativenumber " shows relative line numbers
set splitbelow splitright " split screen behaviour below and right (on :split and :vsplit)
set title " show current file title
set ttimeoutlen=0 " run commands immediately
set wildmenu " advanced menu for autocomplete

" Leader Key
let mapleader=";" " set leader to semi-colon

" Automatically add closing brackets
inoremap {<cr> {<cr>}<ESC>kA<CR>
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i

" Telescope remaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Escape Terminal Mode
tnoremap <Esc> <C-\><C-n>


" Tabs size
set expandtab " transform tabs into spaces
set shiftwidth=2 " number of spaces for indentation
set tabstop=2 " number of spaces for tabs

" Syntax
filetype plugin indent on
syntax on 

" Color Scheme
set t_Co=256
set termguicolors
autocmd VimEnter * colorscheme gruvbox

" File Browser
let NERDTreeShowHidden=1

" Copilot Config
let g:copilot_filetypes = {
            \ '*': v:false,
            \ 'javascript': v:true,
            \ 'typescript': v:true,
            \ 'typescriptreact': v:true,
            \ 'javascriptreact': v:true,
            \ 'python': v:true,
            \ 'html': v:true,
            \ 'css': v:true,
            \ 'markdown': v:true,
            \ }




" Plugins
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'morhetz/gruvbox' " color scheme
    Plug 'luochen1990/rainbow' " rainbow parentheses (for clojure mainly)

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'github/copilot.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'release'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Clojure
    Plug 'Olical/conjure'
    Plug 'tpope/vim-dispatch'
    Plug 'clojure-vim/vim-jack-in'
    Plug 'radenling/vim-dispatch-neovim'

    " Highlight todos
    Plug 'folke/todo-comments.nvim'

    " Comments
    Plug 'tpope/vim-commentary' 

call plug#end()

" Highlight todos config (empty for now)
lua << EOF
    require("todo-comments").setup {
        }
EOF

