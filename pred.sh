## for mobilenetv2 base
#DATE=mobilenetv2_2021-02-04
#WEIGHT=ep117-loss2.237-val_loss3.384.h5
#OPT="--config mobilenetv2.yaml "
# for efficientnet-b0 base
DATE=efficientnet-b0_20210226_133528
WEIGHT=ep252-loss2.025-val_loss3.215.h5
OPT="--config efficientnet-b0.yaml "

python main.py $OPT --mode=VIDEO --model=logs/$DATE/$WEIGHT \
	--input /proj2/BNN/work/20210105/yolov3/data/cards_office_H_T.mp4 \
	--input_size 256 --input_size 256 \
	--output output_$DATE.mp4 \
	--classes_path model_data/egohands_classes.txt

