#!/bin/sh

#----------Check to see if the argument is exist or not-------------------
if [ -z $1 ]
then
    mockup_path="test-server-1"
else
    mockup_path=$1
fi


#----------Check to see if the argument is exist or not-------------------
if [ -z $2 ]
then
    response_time=5
else
    response_time=$2
fi


# Extract the ip address of the current container
ip=$(ip address list | grep eth0 | grep inet | expand | tr -s ' ' | cut -d ' ' -f 3 |  grep '/16' | tr '/' ' ' | cut -d ' ' -f 1)
if [ -z $ip ]
then
    ip="127.0.0.1"
fi

# Running the mockup server
cd $mockup_path
python redfishMockupServer.py -H $ip -t $response_time
