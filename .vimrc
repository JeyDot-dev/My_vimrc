"For 42 Header.
let g:user42 = 'jsousa-a'
let g:mail42 = 'jsousa-a@student.42lausanne.ch'
syntax on
nmap <F1> <nop>
"------------------------------------------------
set incsearch
set hlsearch
set number
set showcmd
"Auto change from absolute to relative nu
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

set autoindent
set smartindent
set ruler
set showmatch
"Indentation stuff
set noexpandtab
set tabstop=4
set shiftwidth=4
"Color stuff
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
