#!/bin/bash -e

[ $# -eq 0 ] && (echo "Error" ; exit 1)

source venv/bin/activate
cd code

python runner.py -a $1 -m $1
