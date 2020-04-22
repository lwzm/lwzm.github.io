cat >~/.inputrc <<'EOF'
"\C-p": history-search-backward
"\C-n": history-search-forward
EOF

cat >~/.bashrc <<'EOF'
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias ls='ls --color'
alias ll='ls -l'
alias l='ll -h'
alias df='df -h'
alias du='du -h'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

function get() {
    _url=http://fs.tyio.net/$1
    curl -L $_url
}

function put() {
    _url=http://fs.tyio.net/$1
    _file="-"
    if [ -f "$1" ]; then
        _file="$1"
    fi
    curl -L -T $_file $_url
}
EOF
