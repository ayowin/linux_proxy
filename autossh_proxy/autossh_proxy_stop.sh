kill -9 $(ps aux | grep 'autossh -M'| grep -v "grep" | tr -s ' '| cut -d ' ' -f 2)
