""---------------The following is for Vundle plugin manager--------
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 Plugin 'tmhedberg/SimpylFold' " a python way of folding
 "Plugin 'vim-syntastic/syntastic'
 "Plugin 'nvie/vim-flake8' "Python PEP8 checking
 Plugin 'jnurmine/Zenburn'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'scrooloose/nerdtree' 
 Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plugin 'EasyMotion' "Awesome plugin for moving around, type <leader><leader>w or <leader><leader>wetTfFbB
 Plugin 'commentary.vim' " gcc or visual+gc
 Plugin 'Auto-Pairs'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""----------------------------------------------------------


"------Python indent proper to PEP8-------------
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
""------------------------------------

 set number

"  " tabs and length settings for general files
"  "
"  set expandtab           " enter spaces when tab is pressed
"  set textwidth=30       " break lines when line length increases
"  set tabstop=4           " use 4 spaces to represent tab
"  set softtabstop=4
"  set shiftwidth=4        " number of spaces to use for auto indent
"  set autoindent          " copy indent from current line when starting a new line

let python_highlight_all=1
"syntax enable
  syntax on               " syntax highlighting

" set split panes right and below, which feels more natural
set splitbelow
set splitright

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"spell checking map to F3
map <F3> :setlocal spell! spelllang=en_us<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"-------------------The following is for vim-latex suite-------------------

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


"--------------------------------------------------------------------------

""-----The color schemes----------------
if has('gui_running')
     set background=dark
     colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>") "Change color scheme of light and dark for Solarized
""------------------------------------

"""-----Recommended settings for Syntastic plugin for beginner, but a bit
""heavey to load----------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
""-----------------------------------------


""------some useful editting mappings------
"copy the paragraph you are in and paste below
noremap cp yap<S-}>p

"align current paragraph
noremap <leader>a =ip

" The following This mapping makes macros even easier to remember: hit qq to
" record, q to stop recording, and Q to apply, also allows you to play macros
" across a visual selection with Q
nnoremap Q @q
vnoremap Q :norm @q<cr>
""---------------------------------------



