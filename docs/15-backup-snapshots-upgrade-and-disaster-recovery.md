# 15. Backup, snapshots, upgrade, and disaster recovery

Protect both configuration state and indexed evidence. Back up central configuration, local rules and decoders, agent keys where policy permits, group configuration, API and RBAC configuration, dashboard saved objects, certificates and keystores through secure procedures, automation, inventories, and runbooks.

Use indexer snapshots for indexed data and store them outside the failure domain with restricted credentials and monitored retention. A filesystem copy of live index data is not a supported snapshot strategy.

## Restore tests

Test configuration restore, index snapshot restore, agent reconnection, dashboard/API function, rule behavior, alerting, and evidence search in an isolated environment. Record achieved RTO/RPO, integrity, missing data, and owner approval.

## Upgrades

Read version-specific compatibility and upgrade guidance, back up, verify cluster health, test custom content, upgrade in the supported order, use maintenance windows, and define rollback limits. Monitor mappings, dashboards, integrations, queues, agents, and detections after each stage.

Document complete-site loss, certificate-authority compromise, index corruption, administrator credential compromise, and partial-node failure procedures.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
