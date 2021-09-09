cat >~/.inputrc <<'EOF'
"\C-p": history-search-backward
"\C-n": history-search-forward
EOF

cat >>~/.bashrc <<'EOF'

alias ls='ls --color'
alias ll='ls -l'
alias l='ll -h'
alias df='df -h'
alias du='du -h'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

EOF
