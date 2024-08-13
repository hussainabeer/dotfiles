#! /usr/bin/bash

scrot -s -F ~/Pictures/%b%d::%H%M%S.png -e 'xclip -selection clipboard -t image/png -i $f'
