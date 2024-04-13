sysctl -p - <<EOF
vm.dirty_background_ratio = 60
vm.dirty_ratio = 80
vm.dirty_writeback_centisecs = 3000
vm.dirty_expire_centisecs = 60000
EOF
