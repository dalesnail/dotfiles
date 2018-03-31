#!/bin/env python

from subprocess import call
import os

os.chdir("/home/dalesnail/.dotfiles")
#call('cd ~/.dotfiles', shell = True)
call('git add .', shell = True)
call('git commit -m "SuperPush Update"', shell = True)
call('git push origin master', shell = True)
