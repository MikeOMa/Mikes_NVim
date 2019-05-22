" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'jpalardy/vim-slime'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'myint/indent-finder' 
" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" vim markdown
"
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Using a non-master branch

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'christoomey/vim-tmux-navigator'
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'altercation/vim-colors-solarized'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'vim-latex/vim-latex'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/Nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

let mapleader = "\\"
let maplocalleader= ","
let g:languagetool_jar='$HOME/.Tools/LanguageTool-4.1/languagetool-commandline.jar'
let g:languagetool_lang='en-GB'
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
let g:solarized_termtrans = 1
set mouse=a

filetype plugin on
filetype indent on

"colors
set t_Co=256

"Highlighting 
set number
set cursorline
set showcmd
set showmatch

"Format
set smarttab
set autoindent
set tabstop=4
set shiftwidth=4
set wrap
set encoding=utf8

"Gui 
set guioptions-=m
set guioptions-=T

let g:livedown_open=1
"Surrounding
set clipboard=unnamedplus
source ~/.config/nvim/vimtex.vim
source ~/.config/nvim/tmux.vim
source ~/.config/nvim/complete.vim
source ~/.config/nvim/slime.vim

map <C-n> :NERDTreeToggle<CR>

set foldlevelstart=99

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ["lintr"]
