#!/usr/bin/env bash
# Historical command from the first activation attempt.
# This left the resolver active but produced a systemd warning and did NOT prove RPZ enforcement.
sudo systemctl reload unbound
sudo systemctl is-active unbound
