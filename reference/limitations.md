# Limitations

- This guide does not replace version-specific Wazuh documentation, support, or architecture review.
- Default paths, ports, APIs, rules, dashboards, certificates, and upgrade order can change between releases.
- Wazuh is not a packet-capture platform, full case-management system, backup product, or guarantee of detection.
- Agent and module support varies by operating system, version, workload, permissions, and deployment model.
- Benchmark, SCA, and vulnerability results require platform-aware validation and do not independently prove compliance.
- Active Response can interrupt production or be triggered by misleading data; deploy only with tested limits and rollback.
- Read-only scripts inspect local visible state and may miss containers, namespaces, remote nodes, protected APIs, cloud controls, or transient failure.
- Examples use placeholder data and must be tested, sized, reviewed, and adapted before production.
