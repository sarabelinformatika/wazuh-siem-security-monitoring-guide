# 02. Architecture, components, and trust boundaries

The reference architecture contains Wazuh agents, the Wazuh server, Wazuh indexer, and Wazuh dashboard. The server receives and analyzes endpoint data; Filebeat forwards alerts to the indexer; the dashboard queries stored data and communicates with the Wazuh server API.

## Placement

Keep central components on protected management networks. Separate public log ingress from administrative access. Restrict component ports by source and purpose, terminate remote administration behind VPN or a controlled access plane, and prevent monitored workloads from reaching indexer or dashboard administration unnecessarily.

## Deployment patterns

An all-in-one node is suitable for labs and constrained pilots when its failure and capacity limits are accepted. Production environments should evaluate separate components and clustered server/indexer tiers based on endpoint count, event rate, query concurrency, retention, maintenance, and availability goals. Distribution does not remove dependency on DNS, NTP, certificates, storage, backup, identity, and monitoring.

## Trust boundaries

Document agent enrollment, agent-to-server traffic, cluster communication, Filebeat-to-indexer TLS, dashboard-to-indexer access, dashboard-to-server API access, identity-provider integration, backup paths, and administrator access. Protect certificate authorities and administrative credentials as tier-zero assets.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
