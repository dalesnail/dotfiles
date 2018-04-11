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
## ~/.dotfiles/dotfiles ##
dotdir = home + '/.dotfiles/dotfiles/'
## .config ##
config = home + '/.config'

#############
# On the PC #
#############

# BashRC
bash = home + '/.bashrc'
# Firefox CSS
firefox = home + '/.mozilla/chrome/'
# Neovim RC - init.vim
nvim = config + '/nvim/init.vim'
# Neovim Colors folder
ncolors = config + '/nvim/colors/'
# Ranger config 
ranger = config + '/ranger'
# Polybar
polybar = config + '/polybar'

##############################
# In the .dotfiles Directory #
##############################

# Neovim Folder
dotnvim = dotdir + '/nvim/'
# Firefox chrome folder
dotfirefox = dotdir + '/chrome/'
# Colors Nvim
dotvimcolors = dotnvim + '/nvim/colors/'
# Ranger config 
dotranger = dotdir + '/ranger/'
# Polybar
dotpolybar = dotdir + '/polybar/'


#########
## bak ##
#########

bak = home + '/.dotfiles/bak/'
copy_tree(dotdir, bak)

#################
# File Movement #
#################
copyfile(dotdir + '.bashrc', bash)
copy_tree(dotfirefox, firefox)
copyfile(dotnvim + 'init.vim', nvim)
copy_tree(dotvimcolors, ncolors)
copy_tree(dotranger, ranger)
copy_tree(dotpolybar, polybar)

