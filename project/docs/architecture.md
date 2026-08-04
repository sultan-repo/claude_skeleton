# Architecture

Keep this document proportional to the project. Remove or mark non-applicable sections rather than filling them with speculation.

## Ultimate-objective alignment

- Objective supported:
- Success measures affected:
- Why this architecture is appropriate:
- Known compromises:

## Current-state assessment

- Existing system or baseline:
- Constraints:
- Technical debt or known weaknesses:
- Evidence gaps:

## System context and boundaries

- Users and external actors:
- System responsibilities:
- Explicit non-responsibilities:
- Trust boundaries:

## Major components and ownership

| Component | Responsibility | Owned Data / State | Interfaces | Failure Impact |
|---|---|---|---|---|

## End-to-end flows and state transitions

Document primary, exception, recovery, and operational flows. Include ownership and concurrency where relevant.

## Human and operational architecture

Applicability: Applicable | Partially applicable | Not applicable

Describe queues, assignment, availability, workload, escalation, second review, handover, supervision, audit, and recovery only when the operating model requires them.

## Data architecture

- Sources and ownership:
- Models and schemas:
- Data flow and lineage:
- Quality and validation:
- Retention and deletion:
- Migration and reconciliation:
- Privacy classification:

## AI and automation architecture

Applicability: Applicable | Partially applicable | Not applicable

- Models and responsibilities:
- Prompt, tool, and agent boundaries:
- Evaluation and calibration:
- Human oversight and fallback:
- Drift, cost, latency, and observability:
- Sensitive-data handling:

## Security and privacy architecture

- Authentication and authorization:
- Secrets and key management:
- Input and output validation:
- Abuse and fraud controls:
- Encryption and sensitive data:
- Auditability and incident response:

## Integrations and dependencies

| Dependency | Purpose | Contract | Failure Handling | Lock-in / Risk |
|---|---|---|---|---|

## Hardware, devices, networks, and environment

[Describe requirements or mark non-applicable.]

## Deployment and environments

- Environments:
- Infrastructure:
- Configuration:
- Release strategy:
- Migration strategy:
- Rollback strategy:

## Reliability and production operations

- Availability objectives:
- Timeouts, retries, and idempotency:
- Recovery and reconciliation:
- Monitoring, metrics, logs, and alerts:
- Backup and disaster recovery:
- Incident and support ownership:

## Performance, scalability, and cost

- Workload assumptions:
- Capacity and bottlenecks:
- Latency targets:
- Scaling approach:
- Cost model and safeguards:

## Testing and validation architecture

- Unit and component tests:
- Integration and contract tests:
- End-to-end and workflow tests:
- Security, privacy, and abuse tests:
- Performance and resilience tests:
- AI evaluation where applicable:
- Production validation and rollback checks:

## File and folder structure

Explain the chosen structure, module boundaries, ownership, and why it fits the stack. Record substantial structural changes and alternatives considered.

## Key decisions and trade-offs

Link to `decisions.md` or ADRs.

## Baseline and recommended architecture

When a materially better direction changes approved scope, document:

- baseline architecture within approved scope
- recommended objective-first architecture
- value, effort, risk, migration, and decision required

## Open risks and decisions

- [Risk or decision]
