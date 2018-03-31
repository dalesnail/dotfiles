" 256 bit color
if  $TERM == "xterm-256color"
	set t_Co=256
endif

" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" Autoinstall
autocmd VimEnter * PlugInstall
autocmd VimEnter * q

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" completion manager
Plug 'roxma/nvim-completion-manager'

" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

syntax on
colorscheme sorcerer

