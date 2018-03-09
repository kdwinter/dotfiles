#!/usr/bin/bash

set -eu

# Wired headphone sink name.
wired="alsa_output.pci-0000_12_00.3.analog-stereo"
# Wireless headphone sink name.
wireless="bluez_sink.00_16_94_1A_F1_D7.a2dp_sink"

swap_pa_sink() {
    local sink=$1

    pacmd set-default-sink "$sink"
    echo "Set default sink."

    pactl list short sink-inputs | while read stream; do
        streamId=$(echo $stream | cut '-d ' -f1)
        pactl move-sink-input "$streamId" "$sink" &> /dev/null
    done
    echo "Rerouted streams."
}

# Check whether wired output is plugged in.
if pacmd list-sinks | grep "active port" | grep "analog-output-lineout" > /dev/null; then
    # Get currently default sink.
    current_sink=$(pacmd stat | awk -F": " '/^Default sink name: /{print $2}')

    if [ "$current_sink" == "$wireless" ]; then
        echo "Switching to wired output."
        swap_pa_sink $wired
    else
        echo "Switching to wireless headphones."
        swap_pa_sink $wireless
    fi

    echo "Done."
else
    echo "Wired headphones are not plugged in."
fi

# vim: ts=4 sw=4 sts=4 expandtab
