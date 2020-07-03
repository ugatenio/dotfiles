" Udi Gatenio's .vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'zivyangll/git-blame.vim'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"


set number
set relativenumber
syntax on
set backspace=indent,eol,start
set background=dark

highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=blue ctermbg=white


" ========= FZF CONFIG =========

nmap <C-p> :Files<CR>


" ======== Git Blame ===========

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>


let g:ycm_autoclose_preview_window_after_completion = 1

