#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:ft=sh:
#
# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or
# distribute this software, either in source code form or as a compiled
# binary, for any purpose, commercial or non-commercial, and by any
# means.
#
# In jurisdictions that recognize copyright laws, the author or authors
# of this software dedicate any and all copyright interest in the
# software to the public domain. We make this dedication for the benefit
# of the public at large and to the detriment of our heirs and
# successors. We intend this dedication to be an overt act of
# relinquishment in perpetuity of all present and future rights to this
# software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org>

title() {
    printf "\033[1;34m%11s\033[0m" "${1}: "
}

top_level_parent_pid() {
    pid=${1:-$$}
    ppid="$(awk '/^PPid:/ { print $2 }' < /proc/"$pid"/status)"
    if [[ ${ppid} -eq 1 ]]; then
        echo "${pid}"
    else
        top_level_parent_pid "${ppid}"
    fi
}

title "os"
uname -o

title "distro"
grep "^NAME=" /etc/os-release | sed "s/NAME=\"\(.*\)\"/\1/"

title "kernel"
uname -r

title "hostname"
hostname

title "packages"
pacman -Q | wc -l

title "mobo"
cat /sys/devices/virtual/dmi/id/board_{vendor,name,version} | tr "\n" " " && echo

title "cpu"
#grep "model name" /proc/cpuinfo | head -1 | sed "s/.*: //"
lscpu | grep "Model name:" | sed "s/.*://" | xargs

title "memory"
#bc <<< "scale=3; $(grep "MemTotal" /proc/meminfo | sed "s/[^0-9]//g") / 1024 / 1024" | tr -d "\n"
#echo " GiB"
free -m | grep Mem: | awk '{printf $2}'
echo " MiB"

title "gpu"
#lspci | grep VGA | head -1 | sed "s/.*\[\(.*\)\].*/\1/g"
#lspci | grep VGA | head -1 | sed "s/.*: //"
glxinfo -B | grep "OpenGL renderer string: " | sed "s/.*: \([a-zA-Z0-9 ]\+\).*/\1/g"

title "wm"
if pgrep i3 >/dev/null; then
    echo "i3"
elif pgrep awesome >/dev/null; then
    echo "awesome"
elif pgrep sway >/dev/null; then
    echo "sway"
elif pgrep dwm >/dev/null; then
    echo "dwm"
else
    echo "unknown"
fi

title "terminal"
#echo "$TERM"
ps -p "$(top_level_parent_pid)" -o comm=

title "shell"
#echo $SHELL
basename "$SHELL"

title "editor"
#command -v "$EDITOR"
basename "$EDITOR"

# Should probably properly parse flags...
if [[ "$1" != "--no-colors" ]]; then
    title "colors"
    for i in $(seq 0 7); do
        echo -en "\033[1;3${i}m●\033[0m "
    done
    echo
fi
