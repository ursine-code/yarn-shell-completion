# Description: Bash shell completion script for yarn
# Author: Mina Demian
# E-mail: mina@minademian.com
# License: MIT
# Version: 1.0.0-alpha.1
# Last updated: 2025-11-08

_compadd() {
    COMPREPLY=($(compgen -W "$1" -- "${COMP_WORDS[COMP_CWORD]}")); 
}

_yarn_completion() {
    # accounts for shell with ANSI escape codes for colors
    _compadd "$(yarn help | sed -E 's/\x1b\[[0-9;]*m//g' | grep -E '^\s+yarn [a-z]' | awk '{print $2}' | sort -u)"
}

complete -F _yarn_completion yarn