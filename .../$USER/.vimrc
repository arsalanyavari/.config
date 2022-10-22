set term=xterm
set nocompatible
set visualbell
set tabstop=4
set mouse=a
set history=5000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set encoding=utf-8
set t_Co=256
set ignorecase
set showmatch
set numberwidth=6
set relativenumber
set number
set cursorline
set expandtab " use space instead of tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set nowrap " each line in one line :)
filetype plugin indent on
syntax on
" set term=xterm
set autowrite " Automatically save before commands like :next and :make


set showmode


set pastetoggle=<F2> "enable paste mode
set matchpairs+=<:> " use % to jump between pairs
" set background=dark

let mapleader = ";"
autocmd FileType c,cpp,java,scala   let b:comment_leader = '// '
autocmd FileType sh,ruby,python,nginx   let b:comment_leader = '# '
nnoremap <silent> <C-;> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<C
nnoremap <silent> <C-S-;> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//
inoremap <silent> <C-;> <esc>:<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<C
inoremap <silent> <C-S-;> <esc>:<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<


au BufRead,BufNewFile *.py,*.pyw,*.conf,*.c,*.cpp,*.h,*.sh match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred
set list
set listchars=trail:•


nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" auto complete for ( , " , ' , [ , {
inoremap        (  ()<Left>
inoremap        "  ""<Left>
inoremap        (  ()<Left>
inoremap        `  ``<Left>
inoremap        '  ''<Left>
inoremap        [  []<Left>
inoremap        {  {}<Left>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'enricobacis/vim-airline-clock'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdcommenter'
call vundle#end()


" nerdtreePlugin 'scrooloose/nerdtree'
" autocmd VimEnter * NERDTree
nmap <C-b> :silent NERDTreeToggle<CR>
nnoremap <C-f> :silent NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = 'ᐅ'
let g:NERDTreeDirArrowCollapsible = '▼'


" rainbow
au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.py' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.c' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'magenta', 'yellow', 'red', 'lightgreen']

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#clock#format = '%A %H:%M'
let g:airline#extensions#clock#updatetime = 1000


" for disabling tmux status bar =)
" autocmd VimEnter,VimLeave * silent !tmux set status
