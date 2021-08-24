cat >/etc/default/locale <<'EOF'
LANG=C.UTF-8
LANGUAGE=C.UTF-8
LC_ALL=C.UTF-8
EOF

cat >/etc/security/limits.conf <<'EOF'
root soft nofile 65535
root hard nofile 65535
* soft nofile 65535
* hard nofile 65535
EOF

cat >>/etc/sysctl.conf <<'EOF'
net.ipv4.ip_forward = 1
EOF

sysctl -w net.ipv4.ip_forward=1
