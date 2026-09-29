---
description: Review my own changes (may be a work in progress)
agent: butlerian/mentat
---

Review my changes: $ARGUMENTS

By default, review uncommitted changes (`git diff`, `git diff --cached`, `git status --short`). If there are none, or I point elsewhere, pick the sensible target (branch diff against its base, last commit, named files) and say what you reviewed. Do not edit files.

The code may be mid-refactor. Work out what is finished and what is in progress, and review the finished work. Do not report stubs, TODOs, unmigrated call sites, or breakage that is clearly part of an unfinished change.

Check for bugs, logic errors, unhandled edge cases and errors, security issues, regressions, and tests that assert nothing or pin implementation details.

Order findings by severity, one or two lines each:

`file:line` [high|medium|low] What goes wrong. Fix: short suggestion.

Add "(unverified)" when you could not confirm a finding. No capitals or dramatic wording. Then:

- **Design and style:** same format, for conventions, needless complexity, over-engineering, code smells, and naming.
- **Not reviewed:** one line listing areas skipped as in progress, if any.

Do not summarize the changes. If nothing holds up, say "No issues found."
