# Architecture

Keep this document proportional to the project. Remove or mark non-applicable sections rather than filling them with speculation.

## Objective alignment

- Objective supported:
- Why this architecture is appropriate:
- Known compromises:

## Current state and constraints

- Existing system:
- Constraints:
- Known weaknesses:
- Evidence gaps:

## Context and boundaries

- Users and external actors:
- System responsibilities:
- Explicit non-responsibilities:
- Trust boundaries:

## Components and state ownership

| Component | Responsibility | Owned Data or State | Interfaces | Failure Impact |
|---|---|---|---|---|

## End-to-end flows

Document primary, exception, recovery, and operational flows, including ownership and concurrency where relevant.

## Data

- Sources and ownership:
- Models and schemas:
- Flow and lineage:
- Quality and validation:
- Retention and deletion:
- Migration and reconciliation:
- Privacy classification:

## AI and automation

Applicability: Undecided | Applicable | Partially applicable | Not applicable

- Responsibilities and boundaries:
- Models, prompts, tools, and agents:
- Evaluation and calibration:
- Human oversight and fallback:
- Drift, cost, latency, and observability:
- Sensitive-data handling:

## Security and privacy

- Authentication and authorization:
- Secrets and key management:
- Validation and abuse controls:
- Encryption and sensitive data:
- Audit and incident response:

## Integrations and dependencies

| Dependency | Purpose | Contract | Failure Handling | Lock-in or Risk |
|---|---|---|---|---|

## Hardware, networks, and environment

[Describe or mark non-applicable.]

## Deployment and operations

- Environments and infrastructure:
- Configuration:
- Release and migration:
- Rollback:
- Observability and alerting:
- Backup, recovery, and reconciliation:
- Incident and support ownership:

## Performance, scalability, and cost

- Workload assumptions:
- Capacity and bottlenecks:
- Latency targets:
- Scaling:
- Cost safeguards:

## Testing and validation architecture

- Unit and component:
- Integration and contract:
- End-to-end and workflow:
- Security, privacy, and abuse:
- Performance and resilience:
- AI evaluation when applicable:
- Production validation and rollback:

## File and folder structure

Explain module boundaries, ownership, and why the structure fits the stack. Record substantial changes and alternatives.

## Trade-offs and open decisions

- [Item]

## Baseline and recommended architecture

Use when a materially better direction changes approved scope.
