---
name: AI Daily Flash Project
description: Context on the AI-Daily-Flash newsletter/podcast project hosted at nfc-eng/AI-Daily-Flash
type: project
---

Next.js 15 / React 19 / Tailwind daily AI newsletter + podcast. Repo: github.com/nfc-eng/AI-Daily-Flash. Production branch: mainline. Deployed on Vercel (production URL: ai-daily-flash-clenicho.vercel.app).

**Why:** Side project / portfolio piece, daily AI news briefing for practitioners.

**How to apply:** When working in this repo, always push to mainline. Use `git pull --rebase --autostash` before pushing. The gh CLI is at ~/bin/gh.

## Pipeline
- GitHub Actions cron: 11:00 UTC Mon-Fri (6am ET)
- `scripts/generate-newsletter.js` → fetches RSS feeds, calls Claude Opus 4.6, saves JSON to `data/newsletters/YYYY-MM-DD.json`
- `scripts/generate-podcast.js` → Haiku picks deep dive story, fetches full article, Claude Opus writes script, ElevenLabs TTS (eleven_turbo_v2_5), uploads MP3 to Vercel Blob (public store: ai-daily-flash-audio-v2), patches audioUrl into newsletter JSON
- Vercel deploy hook triggered after each successful run

## Secrets (GitHub Actions)
- ANTHROPIC_API_KEY
- ELEVENLABS_API_KEY (Starter plan — ~30k credits/mo; ~4,500 credits per episode)
- BLOB_READ_WRITE_TOKEN (public blob store ai-daily-flash-audio-v2)

## Known pending work (from roadmap)
- Paragraph chunking for ElevenLabs TTS (researched but not implemented — needs pydub + ffmpeg in workflow)
- Deep dive article fetching is implemented but paywalled sites fall back to summary-only
- Node.js Actions deprecation: bump actions/checkout + actions/setup-node before June 2, 2026
