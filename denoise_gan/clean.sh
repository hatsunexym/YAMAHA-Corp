#!/bin/bash

NOISY_WAVNAME="/home/youmin/Desktop/DH_060_021.wav"
SAVE_PATH="/home/youmin/Desktop/save"

echo "INPUT NOISY WAV: $NOISY_WAVNAME"
echo "SAVE PATH: $SAVE_PATH"
mkdir -p $SAVE_PATH

python3 main.py --init_noise_std 0. --save_path segan_v1.1 \
               --batch_size 100 --g_nl prelu --weights SEGAN-7052 \
               --preemph 0.95 --bias_deconv True \
               --bias_downconv True --bias_D_conv True \
               --test_wav $NOISY_WAVNAME --save_clean_path $SAVE_PATH
