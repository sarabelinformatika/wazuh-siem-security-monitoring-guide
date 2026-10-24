# 13. Alert triage, cases, notifications, and SOC workflow

An alert must reach an accountable workflow. Define severity using confidence, asset criticality, exposure, threat impact, and required response—not only the Wazuh rule level.

## Triage record

Capture alert and rule IDs, time range, affected assets and identities, raw and normalized evidence, enrichment, related alerts, hypothesis, scope, action, disposition, analyst, reviewer, and linked change or incident. Preserve the original evidence location.

## Noise reduction

Tune at the narrowest reliable layer: improve source configuration, decoder quality, rule conditions, asset context, thresholds, or scoped exceptions. Avoid global suppression that hides distinct assets or tactics. Every suppression needs an owner, reason, test, expiry, and monitoring for changed behavior.

## Notifications

Route actionable events by urgency and ownership. Deduplicate storms, include safe context, avoid secrets, monitor delivery failure, and provide an escalation path. A notification channel is not a case-management system.

Track precision, mean time to acknowledge, investigation duration, escalation rate, reopened events, stale cases, and detections without current playbooks.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
