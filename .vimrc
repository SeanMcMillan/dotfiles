" This is my .vimrc. There are many like it, but this one is mine.

set nocompatible " compatible means all options are global, becasue vi only had one buffer. lame.
syntax on " syntax highlighting (and filetype detection)

filetype indent on      " activates indenting for files
set autoindent          " auto indenting

set tabstop=4 " tabs are four columns wide
set shiftwidth=4 " indent command shifts four columns
set noexpandtab " we use chr(9) for indentation here
set softtabstop=0 " don't use soft tab stops


if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=51 columns=161
  set guioptions -=T
  set guifont=Ubuntu\ Mono:h14
endif

" Set search path to everything under montage
set path=~/Documents/Development/montage/**
cd ~/Documents/Development/montage " cd there too.

set hlsearch " highlight searches
set incsearch " search incrementally
set ignorecase " case insensitive search...
set smartcase " unless explicitly capped

set grepprg=ack\ --column "grep with ack

filetype plugin on " load settings specific to the filetype from ~/.vim/ftplugin

set wildmenu " vim command completion...
set wildmode=full "with a nice menu

set showmatch " hilight matching bracket [   ] 

set fileformat=unix " force LFs

set backspace=2 " backspace can cross any barrier

set history=1000 " remember many commands

" turns out I don't like this much. it breaks zt, and doesn't work with ^b and ^f
"set scrolloff=5 " keep 5 lines of context when scrolling

set laststatus=2 " show the status line

" status line from stconfig, tweaked
set statusline=%y " file type
set statusline+=%F " Full path
set statusline+=%m " modified mark
set statusline+=%r " Read-only mark
set statusline+=%{SyntasticStatuslineFlag()} " Syntax check mark
set statusline+=%= " right align
set statusline+=[%n] " buffer number
set statusline+=%2(\ %) " 2 spaces
set statusline+=%c: " column number (bytes) + colon
set statusline+=%l " line number
set statusline+=%5(\ %) " 5 spaces
set statusline+=%3p " percentage of file, padded to 3 columns
set statusline+=%% " a percent sign

set colorcolumn=100 " Draw a bar at column 100 to show when your lines are too long

" load pathogen plugin, which allows us to leep our plugins unmixed.
" vim plugins will be loaded from any subdir of ~/.vim/bundle
call pathogen#infect()

"set autowrite " write out filles on buffer switch
set hidden " allow switching from edited buffers

set tags=~/.vim/tags/montage " tags file for this project

" syntax check a php file
" map \1 :!php -l %<CR>

set completeopt=longest,menu,preview	" fill in unambiguous text for autocomplete and show more info

" I'm not using supertab anymore. It's a bit slow.
" Supertab -- smart completion (default to omni if it can't guess.)
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"


" Don't let CtrlP change the working Directory
let g:ctrlp_working_path_mode = 0 
" Switch buffer if it's already open
let g:ctrlp_switch_buffer = 2
" ignore source control directories
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Setup Syntax checking
" Set status bar to show errors and warnings
let g:syntastic_stl_format = '[%E{%e Errors}%B{, }%W{%w Warnings}; First on line %F]'

" Solarized color
set background=light
colorscheme solarized

set foldmethod=syntax " Fold based on syntax, not markers
