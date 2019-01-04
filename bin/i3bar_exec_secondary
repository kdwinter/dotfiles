#!/usr/bin/bash

echo '{ "version": 1 }'
echo '['
echo '[],'

while :
do
    #kernel="{\"full_text\": \"KERNEL\", \"color\": \"#676E7D\", \"separator\": false, \"separator_block_width\": 6}, {\"full_text\": \"$(uname -r)\", \"color\": \"#f3f4f5\", \"separator\": false}"
    #tztime="{\"full_text\": \"TIME\", \"color\": \"#F9F9F9\", \"separator\": false, \"separator_block_width\": 6}, {\"full_text\": \" $(date +"%a %e %b %H:%M ")\", \"color\": \"#00AAD4\", \"background\": \"#242424\", \"separator\": false}"
    #tztime="{\"full_text\": \"   $(date +"%a %e %b %H:%M")  \", \"color\": \"#555555\", \"background\": \"#EAC06E\", \"border\": \"#FCE28F\", \"separator\": false, \"separator_block_width\": 0}"
    tztime="{\"full_text\": \"  $(date +"%a %e %b %H:%M")  \", \"color\": \"#F1F1F1\", \"background\": \"#262e3388\", \"border\": \"#EAC06E\", \"border_top\": 0, \"border_left\": 0, \"border_right\": 0, \"separator\": false, \"separator_block_width\": 0}"

    #echo "[$kernel,$tztime]," || exit 1
    echo "[$tztime]," || exit 1
    sleep 23
done

# vim:ts=4:tw=4
