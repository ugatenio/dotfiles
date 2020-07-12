" Udi Gatenio's .vimrc

" ========= Plugins Begin =========
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'zivyangll/git-blame.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin '907th/vim-auto-save'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-fugitive'

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
"
" ========= Plugins End =========

set number
set relativenumber
set encoding=utf-8
set backspace=indent,eol,start
set showtabline=2

syntax on

highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=blue ctermbg=white

colorscheme onedark

" ========= FZF CONFIG =========
nmap <C-p> :Files<CR>
nmap <C-s> :Ag 
nmap <C-f> :BLines<CR>
nmap <leader>a :Ag <C-R><C-W><CR>

" ======== Git Blame CONFIG ===========
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>


" ========= YCM CONFIG =========
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_confirm_extra_conf = 0 
let g:ycm_collect_identifiers_from_tags_files = 1

" ========= Airline CONFIG =========
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" ========= Auto save CONFIG =========
let g:auto_save = 1  " enable AutoSave on Vim startup

