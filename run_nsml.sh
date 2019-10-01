#!/bin/sh

GPU_SIZE=1
CPU_SIZE=4
DATASET="sr-hack-2019-dataset"
MAX_EPOCHS=30

nsml run -g $GPU_SIZE -c $CPU_SIZE -d $DATASET -a "--batch_size 4 --workers 2 --layer_size 4 --hidden_size 384 \
    --use_attention --max_epochs 30"
