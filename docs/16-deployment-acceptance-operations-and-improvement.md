# 16. Deployment, acceptance, operations, and improvement

Production acceptance requires evidence across architecture, security, visibility, detection, response, and recovery.

## Deployment gates

- Approved architecture, flows, sizing, retention, and threat use cases
- Supported versions, trusted packages, certificates, identity, and host hardening
- Representative agent groups and log sources validated
- Custom rules tested with positive, negative, malformed, and volume samples
- RBAC denial tests and administrative recovery completed
- Independent platform monitoring and notification delivery working
- Backup and isolated restore test completed

Deploy in observable stages and preserve rollback. Stop when authentication, ingestion, indexing, query, agent connectivity, or business-service health crosses approved limits.

## Operating rhythm

Review critical alerts, agent and pipeline health, storage, and failed backups daily. Review coverage, updates, vulnerability exposure, rule noise, and exceptions weekly. Review access, detection performance, capacity, source catalogue, and restore evidence monthly or quarterly according to risk.

Every exception needs scope, risk, owner, compensating control, approval, expiry, and validation. Use lessons from incidents, missed detections, false positives, platform outages, and restore exercises to update the backlog and detection catalogue.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
