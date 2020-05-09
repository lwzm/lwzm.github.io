mkdir -p ~/.pip
cat >~/.pip/pip.conf <<'EOF'
[global]
index-url = https://pypi.douban.com/simple
trusted-host = pypi.douban.com
format=columns
EOF
