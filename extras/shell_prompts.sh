## ZSH Prompts
# Debian ZSH Prompt (Kali One-Liner Style)
PROMPT='${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%B%F{%(!.red.green)}%n@%m%b%F{%(!.green.cyan)}-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(!.green.cyan)}]%F{reset}%# '

# Debian ZSH Prompt (Fedora Style)
PROMPT='${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}[%F{%(!.red.green)}%n@%m%F{cyan} %(5~.%-2~/…/%1~.%4~)%F{reset}]%# '

# Fedora Cyan ZSH Prompt
PROMPT='[%F{%(!.red.cyan)}%n@%m%F{reset} %(5~.%-2~/…/%1~.%4~)]%# '

# openSUSE Green ZSH Prompt (Kali One-Liner Alt.)
PROMPT='%F{%(!.red.green)}%n@%m%F{%(!.green.cyan)}[%F{reset}%(5~.%-2~/…/%1~.%4~)%F{%(!.green.cyan)}]%F{reset}%(!.#.>)'

## Bash Prompts
# openSUSE Green Bash Prompt
PS1='\[\e[32m\]\[$(ppwd)\]\u@\h\[\e[m\]:\w>'

# Fedora Cyan Bash Prompt
PS1='[\[\e[36m\]\u@\h\[\e[m\] \W]\$ '
