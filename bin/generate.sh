#!/bin/bash -e

[ $# -eq 0 ] && (echo "Error" ; exit 1)

source venv/bin/activate
cd code

if [ $# -eq 3 ];
  then
    PROMPT="-p $3"
  else
    PROMPT=''
fi
x="../save/models/$1/$1.ckpt-$2"
echo $x
python runner.py -a $1 -l $x -t $PROMPT
