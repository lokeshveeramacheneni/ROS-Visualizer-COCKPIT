#!/bin/bash
#Created on 15-01-2020
#Author : Zuha Karim
source '/home/zuha/catkin_ws/devel/setup.bash'
if [ $1 == 1 ]
then
topiclist=$(rostopic list)
echo "$topiclist"
fi
