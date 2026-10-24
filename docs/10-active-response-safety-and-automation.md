# 10. Active Response safety and automation

Active Response can reduce containment time but can also block administrators, isolate critical systems, or be abused by crafted events. Begin with alert-only workflows and require evidence before enabling automated action.

## Control design

Classify actions as enrichment, reversible endpoint change, temporary containment, or destructive/high-impact response. Define trigger, rule IDs, minimum confidence, scope, duration, allowlists, rate limits, concurrency, approval, audit record, rollback, and failure handling.

Use dedicated service identities with the minimum permissions. Validate script paths, ownership, inputs, quoting, timeouts, exit codes, and log handling. Never pass untrusted event fields directly into a shell. Prevent secrets from entering alerts or process arguments.

## Rollout

Test with synthetic events in an isolated environment, then monitor-only, canary, limited production, and wider deployment. Ensure a separate administrative path remains available. Automatically reversing a block is useful only if the state and rollback operation are reliable.

Every response must produce evidence describing who or what initiated it, target, reason, timestamps, result, rollback status, and incident reference.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
