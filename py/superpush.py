#!/bin/env python

from subprocess import call
import os

os.chdir("/home/dalesnail/.dotfiles")
call('git add .', shell = True)
call('git commit -m "SuperPush Update"', shell = True)
call('git push origin master', shell = True)
