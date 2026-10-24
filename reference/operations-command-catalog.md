# Operations Command Catalogue

Commands are read-only unless the exact vendor documentation states otherwise. Some require elevated access.

| Purpose | Examples |
|---|---|
| Component status | `systemctl status wazuh-manager wazuh-indexer wazuh-dashboard filebeat` |
| Manager processes | `/var/ossec/bin/wazuh-control status` |
| Agent inventory | `/var/ossec/bin/agent_control -l` |
| Agent groups | `/var/ossec/bin/agent_groups -l -g` |
| Rule/decoder testing | `/var/ossec/bin/wazuh-logtest` |
| Analysis config test | `/var/ossec/bin/wazuh-analysisd -t` |
| Filebeat config | `filebeat test config`; `filebeat test output` |
| Listeners | `ss -lntup` |
| Service logs | `journalctl -u SERVICE --since -1h` |
| Capacity | `df -hT`; `df -i`; `du -shx PATH` |
| Certificates | `openssl x509 -in FILE -noout -subject -issuer -enddate` |

Authenticated API queries can reveal security data, identities, addresses, vulnerabilities, and configuration. Keep tokens out of command lines and store output as restricted evidence.
