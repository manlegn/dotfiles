#
# ~/.bashrc
#

HISTSIZE=
HISTFILESIZE=

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

source /etc/profile.d/autojump.sh

function rat {
	cd $(dirname "$1")

	if [[ -d $1 ]]; then
		tar -czvf $(basename "$1").tar.gz "$1"
	elif [[ -f $1 ]]; then
		tar -xzvf "$1"
	fi

	cd -
}

alias ..="cd .."
alias ls='ls -h --color=auto --group-directories-first'
alias ll="ls -Al"
alias l="ls -l"
alias finc="printf '\33]50;%s\007' 'xft:Hack:size=32'"
alias n="finc; nnn $HOME"
alias x="startx"
alias y="youtube-dl"
alias a="youtube-dl -x -o '~/tmp/%(title)s.%(ext)s'"
alias bis="beet import -s"
alias gss="git status -s"
alias grep="grep --color -i"
alias cb="xclip -sel clipboard -i"
alias t="tree -I node_modules --dirsfirst"
alias ende="trans en:de"
alias deen="trans de:en"
alias del="trash-put"
alias mutt="neomutt"
