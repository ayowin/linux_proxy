kill $(ps aux | grep 'ssh -fNR'| grep -v "grep" | tr -s ' '| cut -d ' ' -f 2)
