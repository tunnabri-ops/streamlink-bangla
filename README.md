# 📡 Streamlink Bangla

[![Bangla](https://img.shields.io/badge/UI-Bangla%20%2B%20English-orange)](#)

**Play and record live streams in mpv with one command — no browser, no account, best quality by default.**

> বাংলা সংস্করণ নিচে আছে। / Bangla version below.

## ✨ Features

- `play-bangla.sh <stream-url> [quality]` — plays any stream URL in mpv; quality defaults to `best` (`720p`, `480p` and other service qualities work too).
- `record-bangla.sh <stream-url> [quality] [output-file]` — records a live stream while it plays; default output is `~/Videos/stream-YYYYMMDD-HHMMSS.mp4`.
- `streamlinkrc` — ready config: player `mpv`, default stream `best`, 256 MB demuxer cache, quiet logs (errors and stream info only), 3 segment retry attempts if a stream is briefly down.
- Checks first that `streamlink` and `mpv` are installed and tells you in Bangla what is missing, instead of failing with a cryptic error.

## 🚀 How to use

```bash
# 1. Install the tools (Debian/Ubuntu)
sudo apt install streamlink mpv
#    or: pip install streamlink

# 2. Copy the config to your home directory
cp streamlinkrc ~/.config/streamlink/config

# 3. Play a stream (Twitch, YouTube live, and many other services)
./play-bangla.sh https://www.twitch.tv/somechannel
./play-bangla.sh https://www.youtube.com/watch?v=VIDEO_ID 720p

# 4. Or record it instead
./record-bangla.sh https://www.twitch.tv/somechannel best ~/Videos/live.mp4
#    stop with Ctrl+C
```

## ⚠️ Honest limits

- You need `streamlink` and `mpv` installed — this repo is the config and the scripts, not the player itself.
- Which services and qualities work depends on the service: some sites need a login, some block stream extraction, and quality names differ per service.
- Recording saves exactly what the stream sends; a dropped connection means a gap in the recording.

## 🇧🇩 বাংলা

**Streamlink বাংলা — ব্রাউজার ছাড়া লাইভ স্ট্রিম চালান আর রেকর্ড করুন।**

- `./play-bangla.sh <লিংক> [কোয়ালিটি]` — mpv-তে স্ট্রিম চালায়, ডিফল্ট কোয়ালিটি সেরাটা।
- `./record-bangla.sh <লিংক> [কোয়ালিটি] [ফাইল]` — লাইভ স্ট্রিম রেকর্ড করে।
- `streamlinkrc` — তৈরি কনফিগ: mpv প্লেয়ার, বড় ক্যাশ, চুপচাপ লগ।
- `streamlink` আর `mpv` ইনস্টল থাকতে হবে; কোনো সাইট লগইন চাইলে বা ব্লক করলে স্ট্রিম চলবে না।

## 📄 License

MIT — use it however you like; credit is appreciated.
