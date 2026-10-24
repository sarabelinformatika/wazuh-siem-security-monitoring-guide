#!/usr/bin/env bash
set -u
set -o pipefail
section() { printf '\n## %s\n' "$1"; }
section "Configuration ownership and mode"
for path in /var/ossec/etc/ossec.conf /var/ossec/etc/client.keys /etc/filebeat/filebeat.yml /etc/wazuh-indexer/opensearch.yml /etc/wazuh-dashboard/opensearch_dashboards.yml; do
  if [[ -e "$path" ]]; then stat -c '%a %U:%G %n' "$path"; fi
done
section "Certificate inventory"
find /etc/wazuh-indexer/certs /etc/wazuh-dashboard/certs /etc/filebeat/certs -xdev -type f \( -name '*.pem' -o -name '*.crt' \) -printf '%m %u:%g %p\n' 2>/dev/null | sort
section "Certificate expiry"
while IFS= read -r cert; do
  if openssl x509 -in "$cert" -noout -subject -issuer -enddate >/dev/null 2>&1; then
    printf '\n%s\n' "$cert"; openssl x509 -in "$cert" -noout -subject -issuer -enddate
  fi
done < <(find /etc/wazuh-indexer/certs /etc/wazuh-dashboard/certs /etc/filebeat/certs -xdev -type f \( -name '*.pem' -o -name '*.crt' \) 2>/dev/null | sort)
section "Configuration validation"
if [[ -x /var/ossec/bin/wazuh-analysisd ]]; then /var/ossec/bin/wazuh-analysisd -t 2>&1 || true; fi
if command -v filebeat >/dev/null 2>&1; then filebeat test config 2>&1 || true; fi
printf '\nRead-only posture assessment complete. Review findings before changing permissions.\n'
