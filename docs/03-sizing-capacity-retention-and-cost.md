# 03. Sizing, capacity, retention, and cost

Size from measured events per second, average and peak event size, indexing overhead, replica policy, shard count, retention, query workload, rule complexity, FIM scope, vulnerability inventory, and failure reserve. Endpoint count by itself is an unreliable sizing unit.

## Pilot measurement

Run a representative pilot covering Windows, Linux, network devices, servers, workstations, and high-volume applications. Record raw input, generated alerts, indexing rate, daily index growth, CPU, heap, memory pressure, queue use, disk latency, free space, and dashboard query latency during ordinary and incident peaks.

## Retention tiers

Define hot searchable retention, warm searchable retention, snapshots, archive, and deletion. Align each data class with investigative, legal, contractual, and privacy needs. Index lifecycle policies must be tested against Wazuh index patterns and recovery requirements before production.

## Capacity guardrails

Set warning and critical thresholds for disk watermarks, JVM heap pressure, shard health, ingestion lag, queue utilization, dropped events, agent disconnection, and snapshot failure. Preserve room for node failure, rebalancing, upgrades, and incident bursts. Storage cost should include replicas, snapshots, backup, and restore testing—not only primary index size.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
