# YAMAHA-Corp
Please read the readme.txt and I will do modification soon. Thank you for you understanding.


Designer: 	Youmin XUE

Date:		July.2019 to Aug.2019

Title:		Denoise-GAN based on YAMAHA Music Intruments' noise dataset

Reference: 	SEGAN

<paper resource>https://arxiv.org/pdf/1703.09452.pdf
<github>https://github.com/santi-pdp/segan


*Please train the model by using three different dataset.
Make sure each sample is .wav format and the name of noise&clean one are same.


Name of Dataset			num of clean		num of noisy
16FortePiano			     453		    453
17CFX				     440		    440
rhode_piano			     615		    615



1.Run command in terminal
-------------------------------
bash ./prepare_data_yamaha.sh
-------------------------------
to convert the audio file to 16000hz sample rate


2.Run command in terminal
-------------------------------
bash ./train.sh
-------------------------------
to train the model.


3.result will be saved in document: segan_results,
  sample result will be saved in document: segan_allbiased_preemph


4.If you want to switch the training epoch and batch_size (default : epoch=86, batchsize=100)
plz change the value in 'train.sh' and 'main.py'
