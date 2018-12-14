set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle')

Plugin 'VundleVim/Vundle.vim'

" Programming
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'Raimondi/delimitMate'
Plugin 'jpalardy/vim-slime'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
if v:version >= 703
    Plugin 'Valloric/YouCompleteMe'
endif
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nathanaelkane/vim-indent-guides'

" HTML/XML
Plugin 'mattn/emmet-vim'
Plugin 'sukima/xmledit'

" MarkDown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

" Utility
Plugin 'CmdlineComplete'
Plugin 'rking/ag.vim'
Plugin 'thinca/vim-visualstar'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'sjl/gundo.vim'
"Plugin 'mbbill/undotree'
Plugin 'Mark--Karkat'
Plugin 'FavEx'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'

Plugin 'junegunn/vim-easy-align'
Plugin 'VisIncr'
Plugin 'itchyny/calendar.vim'
Plugin 'DrawIt'

" Color
Plugin 'desert256.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'pdf/vim-railscasts'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'
Plugin 'tpope/vim-vividchalk'
Plugin 'tomasr/molokai'

" Not sure the type ...
" change line number
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set background=dark
set number
set relativenumber
set ruler
set cursorline
set cursorcolumn
set colorcolumn=81
set textwidth=80
set hlsearch
set laststatus=2
set ignorecase
syntax on
set formatoptions=trocq

" Display extra whitespace
" set list listchars=tab:»·,trail:·

" Fold
set foldmethod=indent
set foldnestmax=999
set foldminlines=90
set foldcolumn=6
set foldlevel=-3
" Color
"colorscheme solarized
colorscheme railscasts
"colorscheme desert256

" airline{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }

" indent_guides{
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" }

" Syntastic{
" By default, Location List is closed,
" To temprarily close/open the Location List, type :lclose or :lopen.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
" syntastic_auto_loc_list: 1 for auto open&close, 0 for !1, also has 2 & 3.
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_quiet_messages = { "type": "style" }
" }


execute pathogen#infect()
" syntax on
" syntax enable
" filetype plugin indent on
set background=dark
let g:solarized_termcolors=256
" colorscheme solarized

if has('gui_running')
	set background=light
else
        set background=dark
endif


autocmd QuickFixCmdPost *grep* cwindow

"hi LeadingSpace ctermbg=darkblue guibg=Black
"match LeadingSpace /^\s\+/
hi EndingExcess ctermbg=red guibg=Black
match EndingExcess /\%81v.*/
hi EndingBlank ctermbg=red guibg=Black
match EndingBlank /\s\+$/

" NerdTree
map <F2> :NERDTreeToggle<CR>
" SyntasticCheck
map <F3> :SyntasticCheck python<CR>


" JamshedVesuna/vim-markdown-preview
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_temp_file=1

set pastetoggle=<F8>
