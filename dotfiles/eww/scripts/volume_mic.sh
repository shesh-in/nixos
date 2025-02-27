#! /bin/sh

echo $(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{printf "%d%%", $2 * 100}')
