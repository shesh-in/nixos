#! /bin/sh

echo $(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d%%", $2 * 100}')
