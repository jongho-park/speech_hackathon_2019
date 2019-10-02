#!/bin/sh

GPU_SIZE=1
CPU_SIZE=4
DATASET="sr-hack-2019-dataset"

nsml run -g $GPU_SIZE -c $CPU_SIZE -d $DATASET -a "--batch_size 4 --workers 2 --layer_size 4 --use_attention \
    --hidden_size 512 --max_epochs 100 --load_ckpt team193/sr-hack-2019-dataset/2 model_e29"

#nsml run -g $GPU_SIZE -c $CPU_SIZE -d $DATASET -a "--batch_size 4 --workers 2 --layer_size 4 --use_attention \
    #--hidden_size 512 --max_epochs 100 --weight_decay 0.0001"
