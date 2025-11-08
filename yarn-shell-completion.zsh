# Description: Zsh shell completion script for yarn
# Author: Mina Demian
# E-mail: mina@minademian.com
# License: MIT
# Version: 1.0.0-alpha.1
# Last updated: 2025-11-08

#compdef yarn

complete() {}
source yarn-shell-completion.bash

_compadd() { 
    compadd ${=1};
}

_yarn() { 
    _yarn_completion_main;
}