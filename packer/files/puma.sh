#!/bin/bash
cat << 'EOF' > /etc/systemd/system/puma.service
[Unit]
Description=Puma HTTP Server
After=network.target
[Service]
Type=simple
WorkingDirectory=/home/appuser/reddit
ExecStart=/usr/local/bin/puma
[Install]
WantedBy=multi-user.target
EOF
chmod 644 /etc/systemd/system/puma.service
systemctl daemon-reload
systemctl enable puma.service
