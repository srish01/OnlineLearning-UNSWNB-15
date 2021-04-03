# OnlineLearning -UNSWNB-15

This project aims to perform online learning on UNSWNB-15 dataset.

# TIS-IEEE-2020_OnlineCyberDetection

This directory contains:

1. Experiments-IEEE-TNSM.ipynb
2. outputs
3. old-bak

## Contributor

Gregory Ditzler [gregory.ditzler@gmail.com]
Srishti Gupta [srishti0112gupta@gmail.com]

## Citing the work

G. Ditzler, S. Gupta, P. Satam, and S. Hariri, "Beyond Signature-Based Intrusion Detection with Online Learning," in preparation for IEEE Transactions on Network and Service Management, 2021.

## Import and Install

We need to install the Scikit Multiflow library because it is not installed by default on Google Colab; however, the remainder of the libraries are installed on Google Colab. Note, Dr. Ditzler connected to his Google Drive to access the data rather than manually mounting his Google Drive. You can place the UNSW-NB15 Dataset and place it in a folder named Data/UNSWNB15/ on your Google Drive. Once the code mounts the drive, the rest of the program should know where the data are located.

# BOTNET
This directly is currently under construction. BOTNET contains 15.6G data, manifold larger than UNSWNB-15. We aim to transfer the experimnts on this dataset and observe the trends. We also aim to extend current work to online multiclass classification.
Currently it contains:

1. loarLargeFile.sh: shell script to load data, shuffle and divide it into train and test data.


