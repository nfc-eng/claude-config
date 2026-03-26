---
name: Always push changes to claude-config repo
description: Any changes to ~/.claude (settings.json, CLAUDE.md, etc.) must be committed and pushed to nfc-eng/claude-config on GitHub
type: feedback
---

Always commit and push to `nfc-eng/claude-config` after making any changes to `~/.claude/` — including `settings.json`, `CLAUDE.md`, `.gitignore`, or any other tracked file.

**Why:** Nicholas version-controls his Claude configuration in this repo so changes are persisted, auditable, and synced. Forgetting to push defeats the purpose.

**How to apply:** After every edit to any file in `~/.claude/`, run:
```
cd /Users/nicholas/.claude && git add <file> && git commit -m "..." && git push
```
Do this in the same turn as the edit — don't leave it for later.
