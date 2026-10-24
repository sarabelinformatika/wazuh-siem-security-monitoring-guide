# 11. Indexer shards, lifecycle, and search performance

The indexer is both an evidence store and a potential operational bottleneck. Monitor cluster health, nodes, shards, heap, CPU, disk latency, watermarks, indexing rate, rejected operations, query latency, and certificate status.

## Shards and replicas

Choose shard and replica strategy from measured index size, node count, failure domains, recovery time, and search workload. Too many small shards waste memory and management capacity; oversized shards slow movement and recovery. Test changes on representative data.

## Lifecycle management

Use index-management policies for rollover, retention, hot/warm movement, and deletion. Confirm index patterns and priority, test transitions, monitor failures, and preserve legal holds. Never treat deletion from a dashboard view as complete data disposal without validating snapshots and archives.

## Search operations

Control expensive wide-range searches, saved objects, concurrent dashboards, and analyst exports. Separate capacity for ingestion from investigation peaks. Document index templates and mapping changes; field explosions and inconsistent types can impair ingestion.

Maintain independently protected snapshots and test restore into an isolated destination.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
