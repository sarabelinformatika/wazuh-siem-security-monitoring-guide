# 14. Monitoring the monitoring platform

Wazuh must be monitored independently. A dashboard that appears healthy can coexist with missing agents, delayed pipelines, failed snapshots, or silently disabled modules.

## Platform telemetry

Monitor central service state, cluster membership, indexer health, shard allocation, heap, disk watermarks, queues, rejected events, Filebeat delivery, manager statistics, API latency, dashboard availability, certificate expiry, time synchronization, and backup results.

## Coverage telemetry

Alert on disconnected critical agents, stale inventory, unexpected group changes, missing log sources, configuration-sync failure, disabled FIM/SCA/vulnerability modules, abrupt event-rate changes, and validation events not arriving.

Use an external monitor for synthetic login, API health, certificate checks, host resource metrics, and notification delivery. Store at least some monitoring and incident contacts outside Wazuh so an outage does not erase visibility into itself.

Define maintenance suppression carefully, retain evidence of gaps, and reconcile all agents and sources after changes. Conduct periodic end-to-end tests from a generated endpoint event through alert, notification, case, and response.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
