#!/bin/bash
service ssh start
sleep 5  
# service ssh status
/sshacc.sh
echo 'echo "done"' > /sshacc.sh
echo "su irisowner -c bash  && exit" > /root/.bashrc
chmod 700 /root/.bashrc
su irisowner
