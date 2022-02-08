if status is-interactive
    # Commands to run in interactive sessions can go here
    set -U fish_greeting ""

    alias btrfortune='fortune -a -s | head -n 1 | figlet | lolcat'
    alias fortunecow='fortune -a -s | head -n 1 | cowsay | lolcat'
    
    alias l='exa -lahF --color=always -sname --icons --sort=size --group-directories-first'
    alias ls='exa -lhF --color=always -sname --icons --sort=size --group-directories-first'
    alias lst='exa -lahFT --color=always -sname --icons --sort=size --group-directories-first'
    alias ll='exa -la --color=always --icons -sname --sort=size --group-directories-first'

    
    alias matrix='unimatrix -f -l ocCgGkS -s 96'
    alias clock='tty-clock -sct -C 4'
    alias pipes='pipes -p 5 -R -t 1 -r 0'
    # colorscript -r
end

starship init fish | source
thefuck --alias | source
alias f='fuck'
alias cls='clear'
export PATH="$PATH:$HOME/bin"
export VISUAL=vim
export EDITOR="$VISUAL"
set TTY1 (tty)
[ "$TTY1" = "/dev/tty1" ] && exec bspwm

