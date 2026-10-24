# 01. Scope, use cases, and detection strategy

Wazuh should be deployed to answer defined security questions, not merely to collect every available event. Establish the protected services, endpoint populations, trust zones, data classifications, threat scenarios, compliance obligations, response authority, and evidence-retention requirements before sizing infrastructure.

## Detection objectives

Start with high-value use cases: privileged-account misuse, repeated authentication failure, unauthorized service or scheduled-task creation, sensitive-file change, endpoint security-control degradation, vulnerable software exposure, suspicious network configuration, malware indicators, and unexpected administrative tooling. For each use case define the data source, fields, rule logic, severity, enrichment, owner, response, exception, test event, and success criterion.

## Threat-informed planning

Map techniques relevant to the organization rather than maximizing rule count. Record expected visibility gaps: encrypted application payloads, unmanaged endpoints, short-lived cloud workloads, network segments without collectors, unsupported operating systems, and logs discarded before ingestion. Compensating controls must have owners.

## Success measures

Measure source coverage, agent health, ingestion delay, detection precision, investigation time, response time, false-positive rate, unresolved high-severity findings, and tested recovery. Alert volume alone is not a success metric.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
