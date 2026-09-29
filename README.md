# Butlerian Protocol

A set of agents and commands for GenAI coding tools for those who still want to think.

<p align="center">
  <picture>
    <img height="300" alt="Butlerian Jihad" src="https://static.wikia.nocookie.net/dune/images/d/d8/51Sa-01dxyL-1.jpg/revision/latest?cb=20250528015534" />
  </picture>
</p>

> “Once men turned their thinking over to machines in the hope that this would set them free. But that only permitted other men with machines to enslave them.”
>
> ― Frank Herbert, Dune

> [!NOTE]
> This is a work in progress.

Supports [OpenCode](https://opencode.ai/) and [Claude Code](https://www.google.com/search?q=antrhopic+being+evil) (prefer _OpenCode_).

_[Codex](https://www.reuters.com/legal/government/judge-now-dismisses-lawsuit-by-sam-altmans-sister-accusing-openai-ceo-sexual-2026-03-20/) will probably never be supported._

## Who is this for?

Folks who want to continue learning, improving their skills, and becoming smarter. As much as I don't want to admit it, there can be real benefit to using AI tools. However, there are also immense dangers - cognitive offloading, deskilling, AI psychosis, etc. The agent configurations and commands here are designed to limit the agent to a learning and research tool with the explicit purpose of helping you improve, rather than do your work for you.

If you're forced to use AI for work, the `Mentat` agent is a good choice. It is designed to handle narrow tasks like tests, debugging, and small fixes while keeping you in charge of the codebase.

## Contents

### Agents

- [`Gesserit`](agents/gesserit.md) - a non-emotive assistant that aims to help you learn
- [`Mentat`](agents/mentat.md) - a non-emotive assistant for the work you don't want to do (tests, debugging, small fixes)
- [`Shai-Hulud`](agents/shai-hulud.md) - just a worm

### Commands

- [`explore`](commands/explore.md) - work through ideas, explore new technologies, brainstorm new approaches to a problem
- [`orient`](commands/orient.md) - orient yourself in an unfamiliar codebase (especially an AI-generated one)
- [`unstick`](commands/unstick.md) - get help with a problem you're stuck on
- [`spar`](commands/spar.md) - get constructive feedback on your implementations
- [`slop-jihad`](commands/slop-jihad.md) - skeptical review of someone else's (likely AI-generated) code
- [`gom-jabbar`](commands/gom-jabbar.md) - review your own changes (allows for mid-refactor or work in progress code)
- [`fuck-it`](commands/fuck-it.md) - agent implements everything then debriefs you
- [`navigate`](commands/navigate.md) - agent implements, but walks you through each decision and waits for your feedback
- [`spice`](commands/spice.md) - consume the spice melange

## Using the Butlerian Protocol

Clone the repository.

```sh
git clone https://github.com/austin-weeks/butlerian-protocol.git

cd butlerian-protocol
```

Run the install script.

```sh
./install.sh
```

This symlinks the repo into each tool's config directory which allows edits in the repo to take effect without manually copying files:

| Repo                         | OpenCode                                 | Claude Code                                        |
| ---------------------------- | ---------------------------------------- | -------------------------------------------------- |
| `agents/` (`mode: primary`)  | `~/.config/opencode/agents/butlerian/`   | `~/.claude/output-styles/` (select with `/config`) |
| `agents/` (`mode: subagent`) | `~/.config/opencode/agents/butlerian/`   | `~/.claude/agents/`                                |
| `commands/`                  | `~/.config/opencode/commands/butlerian/` | `~/.claude/commands/butlerian/`                    |
| `skills/`                    | read from `~/.claude/skills/`            | `~/.claude/skills/`                                |

Agent files are shared between both tools. Re-run the script after adding a new agent or skill.

## Tips

Try using a locally-hosted model. Your data stays private and you won't build a reliance on companies that do not have your best interests in mind. Smaller local models also tend to be too dumb to do work on your behalf (well, they'll try, but hopefully you'll be too frustrated with the results that you'll stop asking).

I've had a good experience using [Ollama](https://ollama.com/) with [Gemma 4](https://ollama.com/library/gemma4). It's fairly 'smart' for its size and does a good job aligning with system prompts.
