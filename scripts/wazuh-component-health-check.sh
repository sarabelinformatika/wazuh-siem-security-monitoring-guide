#!/usr/bin/env bash
set -u
set -o pipefail
section() { printf '\n## %s\n' "$1"; }
units=(wazuh-manager wazuh-indexer wazuh-dashboard filebeat wazuh-agent)
section "Host"
printf 'Timestamp (UTC): '; date -u +'%Y-%m-%dT%H:%M:%SZ'
printf 'Hostname: '; hostname --fqdn 2>/dev/null || hostname
printf 'Kernel: '; uname -r
section "Installed packages"
if command -v dpkg-query >/dev/null 2>&1; then dpkg-query -W 'wazuh-*' 'filebeat' 2>/dev/null || true; fi
if command -v rpm >/dev/null 2>&1; then rpm -qa | grep -E '^(wazuh|filebeat)' | sort || true; fi
section "Service state"
for unit in "${units[@]}"; do
  if systemctl list-unit-files "${unit}.service" --no-legend 2>/dev/null | grep -q .; then
    printf '%-18s enabled=%s active=%s\n' "$unit" "$(systemctl is-enabled "$unit" 2>/dev/null || true)" "$(systemctl is-active "$unit" 2>/dev/null || true)"
  fi
done
section "Failed units"
systemctl --failed --no-legend --no-pager 2>/dev/null || true
section "Listeners"
ss -H -lntup 2>/dev/null | grep -E ':(1514|1515|1516|55000|9200|9300|443|5601)\b' || printf 'No common Wazuh listeners visible.\n'
section "Recent errors"
for unit in "${units[@]}"; do journalctl -u "$unit" -p err --since '-24 hours' --no-pager -n 20 2>/dev/null || true; done
printf '\nRead-only component assessment complete.\n'
