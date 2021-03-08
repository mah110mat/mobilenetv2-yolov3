DATE=efficientnet-b0_20210226_133528
WEIGHT=ep252-loss2.025-val_loss3.215.h5
OPT="--config efficientnet-b0.yaml "
python main.py $OPT --mode=IMAGE --model=logs/$DATE/$WEIGHT \
	--input ./egohands_test_12874.txt \
	--input_size 416 --input_size 416 \
	--output logs/$DATE/test \
	--classes_path model_data/egohands_classes.txt

