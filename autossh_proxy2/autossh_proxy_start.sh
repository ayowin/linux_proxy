
# Prepare: you need generate id_rsa.pub & id_rsa first for autossh
# $1: remote ip address
# $2: remote port that localhost ssh port mapping
# $3: remote port that reconnect for ssh timeout
# $4: remote username
# Tips: you often need to enter the password for remote user $5
SSH_COPY_ID="ssh-copy-id -f $4@$1"
AUTOSSH="autossh -M 0 -o \"ServerAliveInterval 30\" -o \"ServerAliveCountMax 3\" -fCNR $2:localhost:$3 $4@$1"
echo ${SSH_COPY_ID}
${SSH_COPY_ID}
echo ${AUTOSSH}
eval ${AUTOSSH}
