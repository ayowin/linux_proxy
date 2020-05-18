
# $1: remote ip address
# $2: remote port that localhost ssh port mapping
# $3: localhost ssh port , default 22 if you have not changed
# $4: remote username
# Tips: you often need to enter the password for remote user $5
command="ssh -fNR $2:localhost:$3 $4@$1"
$command

