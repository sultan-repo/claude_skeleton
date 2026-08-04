---
name: full-spectrum-validation
description: Run comprehensive objective-first multi-agent validation using primary-source inspection, state-of-the-art comparison, adversarial verification, and a prioritized roadmap.
disable-model-invocation: true
allowed-tools: Read Grep Glob Bash Write Edit Agent AskUserQuestion WebSearch WebFetch
---

# Full-Spectrum Validation

Use at project inception or redefinition, major architecture or operating-model changes, repeated systemic failures, production readiness, major releases, or when explicitly requested.

Do not implement the resulting broad roadmap automatically.

## Establish the evidence base

Read the project brief, execution standard, durable project memory, and actual source code, tests, configuration, schemas, migrations, infrastructure, UI, operations, logs, metrics, and evaluations as applicable.

State the ultimate objective, success criteria, constraints, current milestone, assumptions, and evidence gaps.

## Build an unrestricted but relevant panel

Derive review dimensions from the project rather than a fixed agent list. Cover every applicable perspective needed for a trustworthy conclusion, such as product, business, domain, users, operations, architecture, software, data, AI, security, privacy, reliability, performance, UX, accessibility, QA, infrastructure, integration, hardware, cost, legal, compliance, support, and implementation feasibility.

There is no preset maximum number of agents. Use the smallest panel that provides complete coverage, and expand it whenever independent expertise or adversarial challenge materially improves confidence.

Each reviewer must inspect primary sources and provide traceable evidence. Agents work independently before synthesis.

## Challenge the current direction

Evaluate whether the project is the strongest practical way to achieve its objective. Recommend preservation, revision, expansion, reduction, replacement, or deferral of requirements, scope, workflows, architecture, and implementation when justified.

Where relevant, compare credible contemporary practices, proven patterns, available technologies, and realistic alternatives. Assess benefit, evidence, effort, migration risk, operational complexity, cost, skills, dependencies, lock-in, and maintainability.

## Adversarial verification

Every Critical and High finding must be independently challenged. The verifier attempts to reproduce, disprove, reclassify, or qualify the claim and assesses whether the proposed remedy addresses the root cause.

Only confirmed or explicitly qualified findings may be presented as established facts. Credible unverified risks go to a validation backlog with an evidence-gathering action.

## Maximum-effort synthesis

Resolve contradictions rather than merely listing opinions. Remove duplicates and low-value noise. Separate root causes from symptoms. Identify interactions, dependencies, and choices worth preserving.

Start with:

- Executive assessment
- Ultimate-goal alignment
- Evidence coverage and gaps
- Recommended scope and requirement changes

Organize all accepted actions into exactly:

1. Revise
2. Implement
3. Re-engineer
4. Fix
5. UI/UX

For each action include ID, priority P0-P3, severity where relevant, evidence and confidence, objective impact, expected outcome, dependencies, relative effort, risks, reversibility, acceptance criteria, validation method, documentation updates, and responsible role or workstream when relevant.

Produce a phased roadmap. For material scope changes, provide both:

- Baseline roadmap within the currently approved scope
- Recommended roadmap incorporating the stronger objective-serving direction

Identify actions safe to begin, decisions requiring approval, items requiring more evidence, and deferred opportunities.

Update durable documentation with accepted conclusions and unresolved gaps.
