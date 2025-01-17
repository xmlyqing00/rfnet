#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=$1

root=$2
date=$3
model=$4
resume=""$root"/"$date"/model/"$model""

python3 -utt ms.py --data=view --resume=$resume
python3 -utt ms.py --data=illu --resume=$resume
python3 -utt ms.py --data=ef --resume=$resume
