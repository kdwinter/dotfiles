#!/usr/bin/env bash

echo '{ "version": 1 }'
echo '['
echo '[],'

exec conky -c "$HOME/.conkyrc-sescheron"
