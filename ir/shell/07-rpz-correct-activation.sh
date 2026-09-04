#!/usr/bin/env bash
set -euo pipefail
echo '*.tunnel.soclab.abdul4rehman215.tech A 10.50.30.30' | sudo tee -a /etc/unbound/rpz/dns-soc.rpz
sudo sed -i 's/^[[:space:]]*rpz-action-override:[[:space:]]*disabled/    # rpz-action-override: disabled/' /etc/unbound/unbound.conf.d/dns-soc-rpz.conf
sudo unbound-checkconf
sudo systemctl daemon-reload
sudo systemctl restart unbound
sudo systemctl is-active unbound
sudo unbound-control flush ir-verify-03.tunnel.soclab.abdul4rehman215.tech
sudo journalctl -u unbound --since "2 minutes ago" --no-pager | tail -30
