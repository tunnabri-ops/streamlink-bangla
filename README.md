# Streamlink Bangla — ব্রাউজার ছাড়া স্ট্রিম চালান

Bangla-ready Streamlink setup, built on **streamlink/streamlink**.

- **Original repo:** https://github.com/streamlink/streamlink (CLI utility that pipes video streams from Twitch, YouTube and many other services into a video player — no browser needed)

## কী আছে / What is inside

- `streamlinkrc` — Streamlink config: plays with `mpv`, best quality by default, Bangla-friendly defaults.
- `play-bangla.sh` — wrapper script: `play-bangla.sh <stream-url>` plays any streamlink-supported URL; `play-bangla.sh <stream-url> 720p` picks a quality.

## যা ঠিক করা হয়েছে / What was fixed

- Upstream ships with no player configured and no ready-to-run example — a new user has to read the docs to get a first stream playing. This repo gives a one-command start: install streamlink + mpv, run the script.
- Default quality is `best` and the player is `mpv`, so it works out of the box instead of erroring with "no player found".
- The script checks that both `streamlink` and `mpv` exist first and tells you in Bangla what is missing, instead of failing with a cryptic error.

## ব্যবহার / How to use

```bash
# 1. Install (Debian/Ubuntu)
sudo apt install streamlink mpv
#    or: pip install streamlink

# 2. Copy the config to your home directory
cp streamlinkrc ~/.config/streamlink/config

# 3. Play a stream (any URL streamlink supports: Twitch, YouTube live, etc.)
./play-bangla.sh https://www.twitch.tv/somechannel
./play-bangla.sh https://www.youtube.com/watch?v=VIDEO_ID 720p
```

No account, no browser, no key — streams play in mpv.
