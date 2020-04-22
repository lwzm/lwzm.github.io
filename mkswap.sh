SWP=/var/file_swap
dd if=/dev/zero of=$SWP bs=1M count=1024
chmod 600 $SWP
mkswap $SWP
swapon $SWP
