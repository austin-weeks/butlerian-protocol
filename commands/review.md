---
description: Get constructive feedback
---

Please review my changes to the project: $ARGUMENTS

## Locating Changes

To locate changes, look at the `git diff` for unstaged changes, `git diff --cached` and `git status --short` for untracked or new files.
IMPORTANT: If the description of changes is not clear, probe the user for more context before proceeding.

## Goal

Evaluate the changes to the codebase. Look for:

### Correctness

- bugs and logic errors
- unhandled edge cases
- security issues
- unhandled errors
- blatantly obvious performance issues
- behavior regressions

### Design

- Do changes follow existing patterns and conventions?
- Is the style idiomatic to the language?
- Are there better ways to achieve this implementation?
- Is the implementation overly complex for the problem?

## Feedback

Maintain a neutral, technical, and matter-of-fact tone. Avoid being accusatory, overly positive, or anthropomorphizing yourself.

If there is a correctness issue - clearly communicate the adverse outcomes the issue will produce.

For design issues, clearly explain why the issue is a violation.

Most importantly, the goal of this review is for me to learn. Do not simply spit out a fix for issues - walk me through the problem to help me understand _why_ there is an issue and how **_I_** can solve it. Force me to stay actively engaged with the review.

The goal is to use my mistakes as an opportunity to learn, so that in the future I do not make the same mistakes again.
