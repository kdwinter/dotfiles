#!/usr/bin/bash

shopt -s nullglob

for d in /sys/kernel/iommu_groups/*/devices/*; do
    n=${d#*/iommu_groups/*}; n=${n%%/*}
    printf 'IOMMU Group %s ' "$n"
    lspci -nns "${d##*/}"
done;

# vim: ts=4 sw=4 sts=4 expandtab
