# Butlerian Protocol

A set of agents and commands for agentic AI coding tools for those who still want to think.

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

Currently, only [OpenCode](https://opencode.ai/) is supported.

_[Claude Code](https://www.google.com/search?q=antrhopic+being+evil) might be supported one day, but you should use OpenCode anyway. [Codex](https://www.reuters.com/legal/government/judge-now-dismisses-lawsuit-by-sam-altmans-sister-accusing-openai-ceo-sexual-2026-03-20/) probably will never be supported._

## Who is this for?

Folks who want to continue learning, improving their skills, and becoming smarter. As much as I don't want to admit it, there can be real benefit to using AI tools. However, there are also immense dangers - cognitive offloading, deskilling, AI psychosis, etc. The agent configurations and commands here are designed to limit the agent to a learning and research tool with the explicit purpose of helping you improve, rather than do your work for you.

## Contents

### Agents

- [`Gesserit`](agents/gesserit.md) - a non-emotive assistant that aims to help you learn
- [`Shai-Hulud`](agents/shai-hulud.md) - just a worm

### Commands

- [`explore`](commands/explore.md) - work through ideas, explore new technologies, brainstorm new approaches to a problem
- [`orient`](commands/orient.md) - orient yourself in an unfamiliar codebase (especially an AI-generated one)
- [`unstick`](commands/unstick.md) - get help with a problem you're stuck on
- [`review`](commands/review.md) - get constructive feedback on your implementations

## Using the Butlerian Protocol

Clone the repository.

```sh
git clone https://github.com/austin-weeks/butlerian-protocol.git

cd butlerian-protocol
```

Symlink agents.

```sh

mkdir -p ~/.config/opencode/agents

ln -s "$(pwd)/agents" ~/.config/opencode/agents/butlerian
```

Symlink commands.

```sh
mkdir -p ~/.config/opencode/commands

ln -s "$(pwd)/commands" ~/.config/opencode/commands/butlerian
```

This allows OpenCode to read agent and command files in the local `butlerian-protocol` repo without you needing to copy them over.

## Tips

Try using a locally-hosted model. Your data stays private and you won't build a reliance on companies that do not have your best interests in mind. Smaller local models also tend to be too dumb to do work on your behalf (well, they'll try, but hopefully you'll be too frustrated with the results that you'll stop asking).

I've had a good experience using [Ollama](https://ollama.com/) with [Gemma 4](https://ollama.com/library/gemma4). It's fairly 'smart' for its size and does a good job aligning with system prompts.
