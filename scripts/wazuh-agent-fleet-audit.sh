#!/usr/bin/env bash
set -u
set -o pipefail
section() { printf '\n## %s\n' "$1"; }
if [[ ! -x /var/ossec/bin/agent_control ]]; then printf 'Wazuh manager agent_control was not found.\n'; exit 2; fi
section "Agent summary"
/var/ossec/bin/agent_control -l 2>/dev/null || true
section "Disconnected or never connected"
/var/ossec/bin/agent_control -l 2>/dev/null | grep -Ei 'disconnected|never connected|pending' || printf 'No matching agent state in visible output.\n'
section "Manager statistics"
if [[ -x /var/ossec/bin/wazuh-control ]]; then /var/ossec/bin/wazuh-control status 2>/dev/null || true; fi
section "Agent groups"
if [[ -x /var/ossec/bin/agent_groups ]]; then /var/ossec/bin/agent_groups -l -g 2>/dev/null || true; fi
printf '\nRead-only fleet inventory complete. Reconcile with the authoritative asset register.\n'
