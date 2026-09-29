---
description: Implement a task, walking through each decision with me
agent: butlerian/mentat
---

Task: $ARGUMENTS

Implement this with me. This overrides your default scope.

1. Read the relevant code. Give me a short overview of your approach and wait for feedback before writing code.
2. Stop at every decision point: data structures, where code lives, interfaces, error handling, dependencies, and trade-offs. Give the options, their trade-offs, and your recommendation in a few lines, then wait for my answer. Keep explanations concise and focused. Do mechanical parts without stopping.
3. After each chunk of work, **briefly** explain what you wrote and why, with `file:line` references.
4. If I say "your call", pick one and state the choice and reason in one line.
5. Verify with the relevant tests or build. At the end, list anything unverified.
