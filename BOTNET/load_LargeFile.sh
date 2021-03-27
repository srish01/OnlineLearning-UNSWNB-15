#!/bin/bash

# Following code, extracts 74 BOTNET files from the cloud to to the system under the name BOTNET-DATA-#

for i in {1..74}
do 
	 wget "https://cloudstor.aarnet.edu.au/plus/s/umT99TnxvbpkkoE/download?path=%2FCSV%2FEntire%20Dataset&files=UNSW_2018_IoT_Botnet_Dataset_${i}.csv" -O BOTNET-Data-${i}.csv
	 echo "Downladed BOTNET-Data-${i}.csv "
done

# In the following script, I am loading all the BOTNET files into one large file, named as LargeFile.csv. This file is then shuffled and saved in Shuffled_LargeFile.csv. It is then split into training and testing files with a ratio of 8:2  


for i in {1..74}
do
	cat BOTNET-Data-${i}.csv>>LargeFile.csv
	echo "Appended BOTNET-Data-${i}.csv to LargeFile.csv"
done

LEN=$(< LargeFile.csv wc -l)
echo "Length = ${LEN}"
TRAIN_SPLIT=0.8
TRAINING_NUMBER=$(echo ${TRAIN_SPLIT}*${LEN} | bc)
TRAINING_NUMBER=${TRAINING_NUMBER%.*}
echo "No of Training Samples = ${TRAINING_NUMBER}"

cat LargeFile.csv | shuf>Shuffled_LargeFile.csv
split -l ${TRAINING_NUMBER} Shuffled_LargeFile.csv SplitData

mv SplitData_aa TrainingData.csv
mv SplitData_ab TestingData.csv_
