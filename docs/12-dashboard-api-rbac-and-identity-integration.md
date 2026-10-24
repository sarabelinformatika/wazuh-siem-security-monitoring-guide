# 12. Dashboard, API, RBAC, and identity integration

The dashboard and Wazuh server API are administrative security systems. Publish them only on controlled networks or access planes, require TLS, integrate approved identity and MFA where supported, and remove shared accounts.

## Role design

Create roles for platform administration, detection engineering, Tier 1/2 analysis, audit, vulnerability management, and read-only business or customer views. Restrict agents, groups, indices, API actions, tenants, and saved objects according to duty. Test both allowed and denied operations.

Review internal indexer users, dashboard roles, backend roles, Wazuh API policies, role mappings, service accounts, and break-glass identities. Dashboard and Wazuh API authorization are related but distinct layers; validate the complete effective permission path.

## API security

Protect credentials and JWTs, shorten token lifetime to operational need, restrict network reachability, log authentication and privileged actions, rate-limit automation, and use separate machine identities. Do not put tokens in repositories, command history, tickets, or monitoring output.

Define joiner, mover, leaver, periodic review, emergency access, and identity-provider outage procedures.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
