#!/bin/bash

find . -type f -printf '%f\n' | sort | uniq -d