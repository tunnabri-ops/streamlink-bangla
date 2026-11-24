#!/usr/bin/env bash
# record-bangla.sh — Streamlink দিয়ে লাইভ স্ট্রিম রেকর্ড করুন
# ব্যবহার: ./record-bangla.sh <stream-url> [quality] [output-file]
# উদাহরণ: ./record-bangla.sh https://www.twitch.tv/somechannel best ~/Videos/live.mp4
set -e
if [ -z "$1" ]; then
  echo "ব্যবহার: $0 <stream-url> [quality] [output-file]"
  exit 1
fi
command -v streamlink >/dev/null || { echo "streamlink পাওয়া যায়নি — sudo apt install streamlink"; exit 1; }
URL="$1"
QUALITY="${2:-best}"
OUT="${3:-$HOME/Videos/stream-$(date +%Y%m%d-%H%M%S).mp4}"
mkdir -p "$(dirname "$OUT")"
echo "রেকর্ড হচ্ছে: $URL ($QUALITY) → $OUT (বন্ধ করতে Ctrl+C)"
streamlink --default-stream "$QUALITY" -o "$OUT" "$URL"
