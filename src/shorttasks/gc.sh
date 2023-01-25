#!/bin/bash
cd "$(dirname "$0")"

source ./lib/actions.sh
source ./lib/colors.sh

st="gc"
cmd="git commit -m "
applicatble=".git"

# 
# [ "$1" = '.' ] && set  -- " ./ ."
# "commit message" getting broken up. leading to :
# error: pathspec '123' did not match any file(s) known to git
arguments=()
message=()
echo "P1: $1"
echo "P2: $2"

if [ -d "$1" ]; then
    arguments+=("$1")
    startindex=1
else
    arguments+=("./.")
    message+=("$1")
    startindex=0
fi
    index=0
    for arg in "$@"; do
    if [ $index -gt $startindex ]; then 
    message+=("$arg")
    fi
    index=$((index+1))
    done
echo "${arguments[@]}" "${message[@]}"
#  set -- "${arguments[@]}" "\'" "${message[@]}" "\'"

if [ "$1" = '-h' ]; then 
    printf "${IYel}"
    echo "$st ($cmd) filters: $applicable must be present in dirs." 
    printf "${Whi}" 
    # echo "eg: $st branch .    # git branch on currrent dir only. " 
    #  echo "eg: $st branch myapp/. -only myapp. " 
    echo "NOTE: does git add . first - as typically do this before commit."
    echo "eg: $st 'message'    -no location param - all first level dirs having a $applicable"  
    echo "eg: $st 'message' myapp/.   -only in myapp (as long as has $applicable)"  
    echo  "using $st script at: ~/.shorttasks/$st.sh) -edit in your fork and y shorttasks/. update"
    exit
fi

action "$@"
