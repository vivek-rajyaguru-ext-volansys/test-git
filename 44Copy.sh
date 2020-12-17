#!/bin/bash

response=$(curl -v https://rheemiot.atlassian.net/rest/api/2/issue/EDE-210 --user vivek.rajyaguru@volansys.com:KJOXCXVval7odX6Lsled8C80)
total_commit=()
echo "" > com.json
echo $response >> com.json

arr=()
counter=0
# while [ $counter -lt 0 1 ]
    for counter in 0:
    do
    temp2=();
    temp3=();
    # temp3=();
    # The same thingis to be the same name an dto be the 
    # summary=$(cat test1.json |tr '\r\n' ' ' | jq '.base_commit.commit.message')
    # temp2=`echo $summary | awk '{print $1;}'`
    key=$(cat com.json |tr '\r\n' ' ' | jq '.key')
    summary=$(cat com.json |tr '\r\n' ' ' | jq '.fields.summary')
    description=$(cat com.json |tr '\r\n' ' ' | jq '.fields.description')
    # temp2=`echo $summary | awk '{print $temp2;}'`
    # temp3=`echo $description | awk '{print $1;}'`
    arr[${#arr[@]}]+=${key:1:-1}
    arr[${#arr[@]}]+=${summary:1:-1}
    arr[${#arr[@]}]+=${description:1:-1}
    echo "- ${key:1:-1}: ${summary:1:-1}" >> readMe.md
    echo "    - ${description:1:-1}" >> readMe.md
    # arr[${#arr[@]}]+=${temp3:1}]
    # 
    # echo $temp2
    # echo $temp3
    # echo $summary >> readMe.md
    # echo $description >> readMe.md
    # arr=($(echo ${arr[@]} | tr [:] '\n' | awk '!arr[$0]++'))
    # for i in ${arr[@]};
    # do
    # echo $i >> readMe.md
    # done
    # counter=`expr $counter + 1`
    done