#!/usr/bin/env bash
#	--model mobilenetv2_trained_weights_final.h5 \
#OPT="--config mobilenetv2.yaml --log_directory logs "
#OPT="--config efficientnet.yaml --log_directory logs "
OPT="--config efficientnet-b0.yaml --log_directory logs "
#OPT="--config darknet53.yaml --log_directory logs --model model_data/darknet53_weights.h5"
EPOCH=300
python main.py --mode TRAIN $OPT \
	--epochs $EPOCH --epochs $EPOCH \
	--log_directory logs \
	--gpus 0 \
	--train_dataset egohands_train_*.txt \
	--val_dataset egohands_val_*.txt \
	--test_dataset egohands_test_*.txt \
	--classes_path model_data/egohands_classes.txt

