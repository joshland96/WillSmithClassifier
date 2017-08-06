# WillSmithClassifier

Multi-class classifier that uses Tensorflow and a retrained InceptionV3 model and classify images of Will Smith in one of four acting roles:

* Fresh Prince of Bel-Air (1990-1996)
* Men In Black (1997)
* Hitch (2005)
* I Am Legend (2007)

500 steps with 50 images in each movie produces ~ 75% test accuracy

## Instructions for use

### Step 1: Download retrain module

`curl -O https://raw.githubusercontent.com/tensorflow/tensorflow/r1.1/tensorflow/examples/image_retraining/retrain.py`

### Step 2: Retrain Inception model

Optional: Export results to tensorboard
`tensorboard --logdir training_summaries &`

Run bash script
`train.sh`

Output:
* retrain_graph.py
* retrained_labels.txt
* training_summaries

### Step 3: Predict

Option 1: `curl -L URL > label_image.py`

Option 2: `python label_image.py file_path/file_name`