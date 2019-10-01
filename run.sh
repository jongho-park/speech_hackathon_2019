#!/bin/sh

#export CUDA_VISIBLE_DEVICES="0"

BATCH_SIZE=4
WORKER_SIZE=2
MAX_EPOCHS=30
LAYER_SIZE=4

for HIDDEN_SIZE in 384 512
do
    python ./main.py --log_dir log/ls${LAYER_SIZE}_hs${HIDDEN_SIZE}_1 --layer_size ${LAYER_SIZE} --hidden_size ${HIDDEN_SIZE} \
        --batch_size $BATCH_SIZE --workers ${WORKER_SIZE} --use_attention --max_epochs $MAX_EPOCHS
done
