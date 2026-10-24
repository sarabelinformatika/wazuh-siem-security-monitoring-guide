# 04. Secure installation, PKI, and component hardening

Use supported packages and the current official installation procedure for the exact Wazuh version. Verify repositories and signatures, record component versions, pin the deployment artifact, and test the same topology before production.

## Certificates

Use unique certificates and keys for each indexer, server, and dashboard role. Keep private keys readable only by the service identity, protect the certificate-authority material offline, validate names and addresses, monitor expiry, and document rotation. Do not reuse a lab certificate archive in production.

## Host baseline

Harden the underlying operating system: supported release, minimal packages, restricted SSH, named administrators, MFA access path, host firewall, time synchronization, central platform logs, protected backups, and monitored updates. Wazuh monitoring does not compensate for an insecure Wazuh host.

## Secrets and defaults

Replace default credentials, restrict service accounts, avoid secrets in shell history and automation output, and use a managed secret store. Limit read/write access to `/var/ossec`, indexer configuration, dashboard keystores, Filebeat configuration, certificates, backups, and exported support bundles.

Perform acceptance tests for TLS identity, denied unauthorized connections, service restart, node reboot, certificate-expiry alerting, and console recovery.

## Acceptance evidence

Record scope, component and agent versions, owner, change ID, test inputs, expected and observed result, evidence location, exceptions, reviewer, and next review date.

## Related material

- [Security control catalogue](../reference/security-control-catalog.md)
- [Operations command catalogue](../reference/operations-command-catalog.md)
- [Risk and exception register](../templates/risk-and-exception-register.md)
- [Primary sources](../reference/sources.md)
