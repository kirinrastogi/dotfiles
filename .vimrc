""" Kirin Rastogi's dotfiles """
""" github.com/kirinrastogi  """
""" kirinrastogi.com         """

""" GENERAL """
set nocompatible	"Disable vi compatibility mode
filetype off		

""" PLUGINS  """
call plug#begin('~/.vim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'christoomey/vim-tmux-navigator' "Vim-Tmux navigation
Plug 'airblade/vim-gitgutter'         "Git additions and removals
Plug 'sheerun/vim-polyglot'           "Better syntax highlighting

call plug#end()

filetype plugin indent on

""" BEHAVIOUR """
" Misc
set autoread                                            "Auto read changes outside of vim
set clipboard=unnamed		        	                      "System register to be same as unnamed
set mouse=a                                             "Mouse click when just reading
" Spacing and tabs
set backspace=indent,eol,start                          "Add this to your vimrc to make the backspace work like in most other programs
set tabstop=2 			            	                      "Existing tabs to be shown with 4 spaces
set shiftwidth=2                                        "Size of indent
set softtabstop=2                                       "Backspace tab
set expandtab 			            	                      "Tab to be 2 spaces
" Backup and swap files
set backupdir=~/.vim/.backup                            "Dir for vim to save backup files
set directory=~/.vim/.swap                              "Dir for vim to save swap files
" Search 
set nohlsearch                                          "Don't continue to highlight searched phrases.
set incsearch                                           "But do highlight as you type your search.
set ignorecase                                          "Ignore casing when searching
set smartcase                                           "When searching be smart about casing

""" KEY MAPPINGS """
" Easier to use tab than %
nnoremap <tab> %
vnoremap <tab> %

""" VISUAL """
set showmatch	                    	                "Matching braces/brackets
set ruler	                        	                "Show file title
set number		                                        "Show absolute number on current line
set relativenumber                     	                "Relative numbering
syntax on                                               "Syntax highlighting on 

set laststatus=2                                        "Used to see airline without opening split
set noshowmode                                          "Don't repeat vim modes in indicator
set ttimeoutlen=10                                      "Faster to exit insert mode
