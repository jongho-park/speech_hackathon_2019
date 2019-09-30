#!/bin/sh

export CUDA_VISIBLE_DEVICES="0"

BATCH_SIZE=4
WORKER_SIZE=2
MAX_EPOCHS=10

for LAYER_SIZE in 3 4 5 6
do
    python ./main.py --log_dir log/ls${LAYER_SIZE} --layer_size ${LAYER_SIZE} --batch_size $BATCH_SIZE --workers $WORKER_SIZE \
        --use_attention --max_epochs $MAX_EPOCHS
done
