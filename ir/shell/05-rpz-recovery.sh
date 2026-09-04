#!/usr/bin/env bash
set -euo pipefail
sudo cp /root/dns-soc.rpz.s04-backup /etc/unbound/rpz/dns-soc.rpz
sudo cp /root/dns-soc-rpz.conf.s04-backup /etc/unbound/unbound.conf.d/dns-soc-rpz.conf
sudo unbound-checkconf
sudo systemctl restart unbound
sudo systemctl is-active unbound
