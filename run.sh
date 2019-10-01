#!/bin/sh

#export CUDA_VISIBLE_DEVICES="0"

BATCH_SIZE=4
WORKER_SIZE=2
MAX_EPOCHS=30
LAYER_SIZE=4

for HIDDEN_SIZE in 384 640 512
do
    python ./main.py --log_dir log/ls${LAYER_SIZE}_hs${HIDDEN_SIZE} --layer_size ${LAYER_SIZE} --hidden_size ${HIDDEN_SIZE} \
        --batch_size $BATCH_SIZE --workers ${WORKER_SIZE} --use_attention --max_epochs $MAX_EPOCHS
done

#HIDDEN_SIZE=384
#LAYER_SIZE=4
#nsml run -g 1 -c 4 -d sr-hack-2019-dataset -a "--batch_size ${BATCH_SIZE} --workers ${WORKER_SIZE} --layer_size ${LAYER_SIZE} \
    #--use_attention --max_epochs 20"
