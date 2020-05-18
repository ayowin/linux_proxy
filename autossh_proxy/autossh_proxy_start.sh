
# Prepare: you need generate id_rsa.pub & id_rsa first for autossh
# $1: remote ip address
# $2: remote port that localhost ssh port mapping
# $3: remote port that reconnect for ssh timeout
# $4: localhost ssh port , default 22 if you have not changed
# $5: remote username
# Tips: you often need to enter the password for remote user $5
SSH_COPY_ID="ssh-copy-id -f $5@$1"
AUTOSSH="autossh -M $3 -fCNR $2:localhost:$4 $5@$1"
#echo $SSH_COPY_ID
#echo $AUTOSSH
$SSH_COPY_ID
$AUTOSSH
