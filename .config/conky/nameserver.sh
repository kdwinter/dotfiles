#!/usr/bin/env bash
# vim:ts=4:sw=4:sts=4:et:

grep nameserver /etc/resolv.conf | tail -1 | awk '{printf $2}'
