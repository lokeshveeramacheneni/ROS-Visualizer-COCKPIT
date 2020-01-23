#!/bin/bash
# tmux new-session -A -s dashboard
#cd catkin_ws
#catkin build
source "/home/zuha/catkin_ws/devel/setup.bash"


#cmd="locate -b '\\"$1"'"
cmd="find /home -name $1"

path=$(eval $cmd)
#echo $path
IFS='/'
read -ra split<<<"$path"
last_str=''
package_name=''
for i in "${split[@]}";
do
    if [ "$last_str" == 'src' ]
    then
        package_name=$i
    fi
    last_str=$i
done
launch_cmd="roslaunch "$package_name" "$1
#echo $launch_cmd
echo 3
launch_status=$(eval $launch_cmd)
