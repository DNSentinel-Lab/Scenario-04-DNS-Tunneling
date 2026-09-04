#!/usr/bin/env bash
set -euo pipefail
sudo cp /etc/unbound/unbound.conf.d/dns-soc-rpz.conf /root/dns-soc-rpz.conf.s04-backup
sudo cp /etc/unbound/rpz/dns-soc.rpz /root/dns-soc.rpz.s04-backup
echo '*.tunnel.soclab.abdul4rehman215.tech A 10.50.30.30' | sudo tee -a /etc/unbound/rpz/dns-soc.rpz
sudo sed -i 's/^[[:space:]]*rpz-action-override:[[:space:]]*disabled/    # rpz-action-override: disabled/' /etc/unbound/unbound.conf.d/dns-soc-rpz.conf
sudo tail -n 6 /etc/unbound/rpz/dns-soc.rpz
sudo cat /etc/unbound/unbound.conf.d/dns-soc-rpz.conf
sudo unbound-checkconf
