#!bash
echo '进入程序:' $1
ps -ef  | grep $1 | awk 'NR==1{print $2}' | xargs kill -9
#  0 是成功，非0 是失败
if $?==0
then
    echo 'kill' $1 'sucess'
else
    echo 'kill' $1 'fail'
fi