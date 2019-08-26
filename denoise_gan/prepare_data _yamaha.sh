#!/bin/bash

# Prepare the Audio Dataset
mkdir -p data_audio
pushd data_audio

#sox sampling to 16000hz
if [ ! -d clean_trainset_wav_16k ]; then
    echo 'CONVERTING CLEAN WAVS TO 16K...'
    mkdir clean_trainset_wav
    ls *.wav | while read name; do
        sox $name -r 16k ../clean_trainset_wav_16k/$name
    done
    popd
fi


if [ ! -d noisy_trainset_wav_16k ]; then
    echo 'CONVERTING NOISY WAVS TO 16K...'
    mkdir -p noisy_trainset_wav_16k
    pushd noisy_trainset_wav
    ls *.wav | while read name; do
        sox $name -r 16k ../noisy_trainset_wav_16k/$name
    done
    popd
fi


#Transfer the data into  tfrecords
echo 'PREPARING TRAINING DATA...'
python3 make_tfrecords.py --force-gen --cfg cfg/e2e_maker.cfg
