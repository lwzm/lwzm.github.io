mkdir -p ~/.pip
cat >~/.pip/pip.conf <<'EOF'
[global]
format = columns
user = true
index-url = https://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com
EOF
