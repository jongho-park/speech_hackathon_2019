#!/bin/sh

#export CUDA_VISIBLE_DEVICES="0"

BATCH_SIZE=4
WORKER_SIZE=2
MAX_EPOCHS=30
LAYER_SIZE=4

#for HIDDEN_SIZE in 512
#do
    #python ./main.py --log_dir log/ls${LAYER_SIZE}_hs${HIDDEN_SIZE}_wd --layer_size ${LAYER_SIZE} --hidden_size ${HIDDEN_SIZE} \
        #--batch_size $BATCH_SIZE --workers ${WORKER_SIZE} --use_attention --max_epochs $MAX_EPOCHS --weight_decay 0.0001

    #python ./main.py --log_dir log/trim120max200k_ls${LAYER_SIZE}_hs${HIDDEN_SIZE}_wd --layer_size ${LAYER_SIZE} --hidden_size ${HIDDEN_SIZE} \
        #--batch_size $BATCH_SIZE --workers ${WORKER_SIZE} --use_attention --max_epochs $MAX_EPOCHS --weight_decay 0.0001
#done

python ./main.py --log_dir log/tester --layer_size 4 --hidden_size 512 \
    --batch_size 4 --workers 2 --use_attention --max_epochs 100 --weight_decay 0.0001 --transformer_encoder
