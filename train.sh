#!/usr/bin/env bash
#	--model mobilenetv2_trained_weights_final.h5 \
python main.py --mode TRAIN --config mobilenetv2.yaml \
	--epochs 500 --epochs 500 \
	--log_directory logs \
	--gpus 0 \
	--train_dataset egohands_train_*.txt \
	--val_dataset egohands_val_*.txt \
	--test_dataset egohands_test_*.txt \
	--classes_path model_data/egohands_classes.txt

