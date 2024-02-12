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

#sysctl -w net.ipv4.ip_forward=1

for i in $(seq 2 6); do
  systemctl mask getty@tty${i}
done

cat >/etc/apt/apt.conf <<'EOF'
APT::Install-Recommends "false";
APT::Install-Suggests "false";
EOF
