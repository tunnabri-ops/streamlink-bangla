#!/usr/bin/env bash
# play-bangla.sh — Streamlink দিয়ে যেকোনো স্ট্রিম mpv-তে চালান
# ব্যবহার: ./play-bangla.sh <stream-url> [quality]
# উদাহরণ: ./play-bangla.sh https://www.twitch.tv/somechannel 720p
set -e
if [ -z "$1" ]; then
  echo "ব্যবহার: $0 <stream-url> [quality]"
  echo "উদাহরণ: $0 https://www.twitch.tv/somechannel 720p"
  exit 1
fi
command -v streamlink >/dev/null || { echo "streamlink পাওয়া যায়নি — sudo apt install streamlink"; exit 1; }
command -v mpv >/dev/null || { echo "mpv পাওয়া যায়নি — sudo apt install mpv"; exit 1; }
URL="$1"
QUALITY="${2:-best}"
echo "চালানো হচ্ছে: $URL ($QUALITY)"
streamlink --player mpv --default-stream "$QUALITY" "$URL"
