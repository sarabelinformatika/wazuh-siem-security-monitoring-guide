# 06. Log collection: syslog, Windows, Linux, and cloud sources

Create a log-source catalogue containing owner, system, transport, format, timezone, expected volume, required fields, retention, sensitivity, failure alert, and validation event. Collect only sources that support an owned detection or investigation need.

## Endpoint logs

For Windows, define channels and event IDs deliberately; broad collection can overwhelm storage while missing enhanced audit configuration. For Linux, combine selected files, journald units, audit, authentication, privilege, and application events. Normalize time and preserve the original event where investigation requires it.

## Syslog and appliances

Use dedicated listeners, source restrictions, reliable transport where available, and TLS for untrusted networks. Network address is not a durable device identity; enrich events with inventory and validate sender behavior. Protect receivers against spoofing, floods, malformed events, and disk exhaustion.

## Cloud and SaaS

Scope API permissions minimally, monitor collection delay and rate limits, store checkpoints safely, and alert on authentication or ingestion failure. Record data residency and provider-side retention.

For every source, generate a benign validation event and confirm receipt, decoding, rule behavior, timestamp, fields, dashboard search, alerting, and retention.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
