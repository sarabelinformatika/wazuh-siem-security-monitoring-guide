# Ports and Protocols

Confirm the exact release and architecture. Permit only documented sources and destinations.

| Function | Typical protocol / port | Direction | Notes |
|---|---|---|---|
| Agent events | TCP 1514 | Agent to server | Encrypted agent communication |
| Agent enrollment | TCP 1515 | Agent to server | Restrict and monitor enrollment |
| Server cluster | TCP 1516 | Server node to node | Cluster members only |
| Wazuh server API | TCP 55000 | Dashboard/admin to server | HTTPS, RBAC, restricted network |
| Indexer API | TCP 9200 | Server/dashboard/admin to indexer | Mutual TLS and role restrictions |
| Indexer transport | TCP 9300 | Indexer node to node | Cluster members only |
| Dashboard | TCP 443 or 5601 | Analyst/admin to dashboard | Prefer controlled TLS access |
| Syslog | UDP/TCP 514 or TLS 6514 | Sources to receiver | Prefer authenticated reliable transport |

Also document DNS, NTP, repositories, identity providers, email/webhook notifications, cloud APIs, threat-intelligence services, backup/snapshot destinations, management, and external monitoring. Apply IPv4 and IPv6 parity.
