#!/bin/bash

# Needed so that aliases will bubble all the way up to bash shell
shopt -s expand_aliases

# UVG conviniance aliases
alias menu_shortcuts='~/shorts/show-short-menu.sh'
alias cdallotsecure='cd /home/vagrant/dev/allotsecure'
alias dcu='docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d'
alias dcup='docker-compose -f docker-compose.yml -f docker-compose-dev.yml -f docker-compose-patch.yml up -d'
alias dcd='docker-compose down'
alias dl='f(){ docker logs allotsecure_$1_1 $2; }; f'
alias dcr='f(){ docker-compose restart $@;  }; f'
alias dcps='docker-compose ps'
alias de='f(){ docker exec -ti allotsecure_$1_1 ${2:-/bin/bash} ${@:3}; }; f'

