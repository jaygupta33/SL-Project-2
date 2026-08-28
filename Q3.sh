#!/bin/bash

echo "Top 10 largest items in "$HOME:""
du -ah "$HOME" 2>/dev/null | sort -rh | head -n 10
