kill -9 $(ps aux | grep 'autossh -M 0 -o'| grep -v "grep" | tr -s ' '| cut -d ' ' -f 2)
