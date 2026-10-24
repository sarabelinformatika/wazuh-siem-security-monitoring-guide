#!/usr/bin/env bash
set -u
set -o pipefail
section() { printf '\n## %s\n' "$1"; }
section "Filesystems"
df -hT / /var /var/lib/wazuh-indexer /var/ossec 2>/dev/null | awk '!seen[$0]++'
section "Inodes"
df -i / /var /var/lib/wazuh-indexer /var/ossec 2>/dev/null | awk '!seen[$0]++'
section "Wazuh directory sizes"
for path in /var/lib/wazuh-indexer /var/ossec/logs /var/ossec/queue /var/ossec/var; do
  if [[ -d "$path" ]]; then du -shx "$path" 2>/dev/null || true; fi
done
section "Largest local Wazuh paths"
find /var/lib/wazuh-indexer /var/ossec -xdev -type f -printf '%s %p\n' 2>/dev/null | sort -nr | head -20 | awk '{bytes=$1; $1=""; printf "%.2f MiB%s\n", bytes/1048576, $0}'
section "Memory"
free -h 2>/dev/null || true
section "Index data age"
find /var/lib/wazuh-indexer -xdev -type f -printf '%TY-%Tm-%Td %p\n' 2>/dev/null | sort | sed -n '1p;$p'
printf '\nRead-only capacity assessment complete. Index lifecycle must be verified through the authenticated indexer API.\n'
