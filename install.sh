#!/bin/sh
# Symlinks agents, commands, and skills into OpenCode and Claude Code config dirs. Safe to re-run.
set -e
R="$(cd "$(dirname "$0")" && pwd)"
OC="${XDG_CONFIG_HOME:-$HOME/.config}/opencode"
CC="$HOME/.claude"

link() { mkdir -p "$(dirname "$2")" && ln -sfn "$1" "$2" && echo "$2 -> $1"; }

link "$R/agents" "$OC/agents/butlerian"
link "$R/commands" "$OC/commands/butlerian"
link "$R/commands" "$CC/commands/butlerian"

# Claude Code: primary agents become output styles, subagents become agents.
for f in "$R"/agents/*.md; do
    case "$(sed -n 's/^mode: *//p' "$f" | head -1)" in
    primary) link "$f" "$CC/output-styles/$(basename "$f")" ;;
    subagent) link "$f" "$CC/agents/$(basename "$f")" ;;
    esac
done

# OpenCode also reads ~/.claude/skills.
for d in "$R"/skills/*/; do [ -d "$d" ] || continue; link "${d%/}" "$CC/skills/$(basename "$d")"; done
