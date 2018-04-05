"#  ██████╗  █████╗ ██╗     ███████╗    ██╗  ██╗    ███████╗███╗   ██╗ █████╗ ██╗██╗     
"#  ██╔══██╗██╔══██╗██║     ██╔════╝    ╚██╗██╔╝    ██╔════╝████╗  ██║██╔══██╗██║██║     
"#  ██║  ██║███████║██║     █████╗       ╚███╔╝     ███████╗██╔██╗ ██║███████║██║██║     
"#  ██║  ██║██╔══██║██║     ██╔══╝       ██╔██╗     ╚════██║██║╚██╗██║██╔══██║██║██║     
"#  ██████╔╝██║  ██║███████╗███████╗    ██╔╝ ██╗    ███████║██║ ╚████║██║  ██║██║███████╗
"#  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚══════╝
"#  Nvim init.vim



" 256 bit color
if  $TERM == "xterm-256color"
	set t_Co=256
endif

" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" Autoinstall - Leaving here to remind you of your mistakes
" autocmd VimEnter * PlugInstall
" autocmd VimEnter * q

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" completion manager
Plug 'roxma/nvim-completion-manager'

" powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Color Stuff
syntax on
colorscheme sorcerer
