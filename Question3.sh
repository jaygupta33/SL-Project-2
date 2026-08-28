#!/bin/bash

echo "Top 10 largest items in $HOME:"
du -ah "$HOME" 2>/dev/null | sort -rh | head -n 10

#Output
#jaygupta@pop-os:~$ du -h "$HOME" 2>/dev/null | sort -rh | head -n 10
#23G	/home/jaygupta
#7.6G	/home/jaygupta/projects/ml-pipeline-optimization
#7.6G	/home/jaygupta/projects
#7.0G	/home/jaygupta/projects/ml-pipeline-optimization/venv/lib/python3.12/site-packages
#7.0G	/home/jaygupta/projects/ml-pipeline-optimization/venv/lib/python3.12
#7.0G	/home/jaygupta/projects/ml-pipeline-optimization/venv/lib
#7.0G	/home/jaygupta/projects/ml-pipeline-optimization/venv
#5.4G	/home/jaygupta/.cache
#4.3G	/home/jaygupta/projects/ml-pipeline-optimization/venv/lib/python3.12/site-packages/nvidia
#4.2G	/home/jaygupta/.local/share