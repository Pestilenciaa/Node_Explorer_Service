#!/bin/sh
wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar xvfz node_exporter-1.0.1.linux-amd64.tar.gz
mv node_exporter-1.0.1.linux-amd64 /usr/local/bin/
cd /etc/systemd/system/
wget https://github.com/Pestilenciaa/Node_Explorer_Service/releases/download/1/node_exporter.service
systemctl daemon-reload
systemctl start node_exporter
systemctl enable node_exporter
