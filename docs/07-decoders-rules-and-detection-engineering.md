# 07. Decoders, rules, and detection engineering

Wazuh decoders extract structured fields; rules evaluate decoded events and context. Custom content must use the supported local directories and ID ranges, be version-controlled, reviewed, and tested independently from vendor content.

## Development workflow

1. Preserve sanitized representative log samples.
2. Confirm whether an existing decoder already matches.
3. Build the smallest decoder that extracts stable fields.
4. Write rules with explicit parentage, conditions, level, groups, and description.
5. Test positive, negative, malformed, and high-volume samples with `wazuh-logtest`.
6. Deploy to a canary, observe, then promote.

Do not edit vendor rule files directly: upgrades can overwrite them and future ruleset behavior becomes ambiguous. Avoid fragile regex tied to presentation details that change between product versions.

## Rule quality

Each detection needs a threat rationale, data dependencies, severity mapping, false-positive assumptions, response playbook, owner, test fixtures, and change history. Correlation windows and frequency thresholds must reflect real operational patterns. Validate rule performance and queue impact before large-scale rollout.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
