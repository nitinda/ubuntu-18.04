#!/bin/sh -eux

nitinda='
This system is built by the Nitin D
More information can be found at https://github.com/nitinda/ubuntu-18.04'

if [ -d /etc/update-motd.d ]; then
    MOTD_CONFIG='/etc/update-motd.d/99-nitinda'

    cat >> "$MOTD_CONFIG" <<NITINDA
#!/bin/sh
cat <<'EOF'
$nitinda
EOF
NITINDA

    chmod 0755 "$MOTD_CONFIG"
else
    echo "$nitinda" >> /etc/motd
fi