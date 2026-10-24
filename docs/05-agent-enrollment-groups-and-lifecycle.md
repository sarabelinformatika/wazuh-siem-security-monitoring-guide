# 05. Agent enrollment, groups, and lifecycle

Agent identity must be attributable to an approved asset. Automate deployment through controlled software-management tooling and bind enrollment to inventory, environment, owner, operating system, trust zone, and intended group.

## Enrollment

Restrict enrollment sources and time windows, protect enrollment credentials, validate the manager identity, and prevent duplicate or stale agent records from becoming trusted evidence. Internet-connected agents should reach only the intended service through a documented path.

## Groups and configuration

Use groups to express stable policy differences such as operating system, server/workstation role, environment, and regulated scope. Avoid a large number of one-off group configurations. Version shared configuration, peer-review changes, test on canary agents, and verify that the expected configuration is active.

## Lifecycle

Track connected, disconnected, never-connected, duplicated, pending, retired, and decommissioned agents. Define time thresholds by asset class. Removing an endpoint requires disabling enrollment, removing credentials and records, preserving required evidence, and updating inventory.

Monitor agent version, last keepalive, group assignment, configuration sync, queue behavior, and coverage of critical modules. An installed agent is not proof of useful telemetry.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
