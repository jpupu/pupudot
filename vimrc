set nocompatible              " be iMproved, required
filetype off                  " required
set shell=bash  " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'tcomment'
Plugin 'Solarized'
Plugin 'operator-user'
Plugin 'rhysd/vim-clang-format'
Plugin 'vim-misc' " required by vim-session
Plugin 'xolox/vim-session'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'derekwyatt/vim-fswitch'

" All of your Plugins must be added before the following line
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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let g:clang_format#command = "clang-format-3.6"
let g:clang_format#code_style = "llvm"
let g:clang_format#style_options = {
	\ "IndentWidth" : 2,
	\ "AllowShortIfStatementsOnASingleLine" : "true",
	\ "AlwaysBreakTemplateDeclarations" : "true",
	\ "BreakBeforeBraces" : "Stroustrup",
	\ "Standard" : "C++11"}




" Indenting/formatting
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" UI

" Show invisible characters::
set list
" make tabs visible
set listchars=tab:»·
" make trailing spaces visible
set listchars+=trail:·
set listchars+=precedes:«
set listchars+=extends:»
set listchars+=nbsp:␣

" Show solid line for vertical split
set fillchars=vert:│

" Show line numbers
set number
" Keep cursor away from sides of screen
set scrolloff=10
set sidescroll=1
set sidescrolloff=8

" Properly indent wrapped lines.
" Requires recent vim version.
if version >= 704 && has("patch338")
  set breakindent
  set breakindentopt=shift:4
endif

" Nice completion
set wildmode=list:longest,full

colorscheme solarized
set guifont=Inconsolata\ 10

" Incremental search
set incsearch

" Change working directory to the directory of the current file.
set autochdir

:nnoremap <F12> :OpenSession 
:noremap <c-s> :w<CR>

:nmap <silent> <Leader>of :FSHere<cr>
" :nmap <silent> <Leader>ol :FSRight<cr>
" :nmap <silent> <Leader>oh :FSLeft<cr>


let g:session_autosave='yes'
let g:session_autosave_pediodic=5
" Commands are like SessionOpen instead of OpenSession
let g:session_command_aliases=1


let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/]\.(git|hg|dll)$',
    \ 'file': '\v\.(exe|so|dll|class|o)$',
    \ }

