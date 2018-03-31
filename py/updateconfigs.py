#!/bin/env python

import os
from os.path import expanduser
from shutil import copyfile
from distutils.dir_util import copy_tree

'''
This will pull all configs from around the machine into this one repo after edits are made, for organizational purposes. 
Just make it a common practice to run this after making changes to a config you will be keeping, and uploading to github.
'''

# No place like ~/
home = expanduser("~")


# On the PC #

# BashRC
bash = home + '/.bashrc'

# Firefox CSS
firefox = home + '/.mozilla/chrome/'

# Neovim RC - init.vim
nvim = home + '/.config/nvim/init.vim'

# Neovim Colors folder
ncolors = home + '/.config/nvim/colors/'



# In the .dotfiles Directory #

# Neovim Folder
dotnvim = home + '/.dotfiles/dotfiles/nvim/'

# Firefox chrome folder
dotfirefox = home + '/.dotfiles/dotfiles/chrome/'

# Colors Nvim
dotvimcolors = dotnvim + 'colors/'


## ~/.dotfiles/dotfiles ##

dotdir = home + '/.dotfiles/dotfiles/'


## bak ##

bak = home + '/.dotfiles/bak/'
copy_tree(dotdir, bak)


# File Movement #

copyfile(bash, dotdir + '.bashrc')
copy_tree(firefox, dotfirefox)
copyfile(nvim, dotnvim + 'init.vim')
copy_tree(ncolors, dotvimcolors)
