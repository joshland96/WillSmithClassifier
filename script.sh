# Step 1

# Download retrain module
# curl -O https://raw.githubusercontent.com/tensorflow/tensorflow/r1.1/tensorflow/examples/image_retraining/retrain.py


# Step 2: Retrain Inception model

# Export results to tensorboard
# tensorboard --logdir training_summaries &

python retrain.py \
  --bottleneck_dir=bottlenecks \
  --how_many_training_steps=500 \
  --model_dir=./inception \
  --summaries_dir=training_summaries/basic \
  --output_graph=retrained_graph.pb \
  --output_labels=retrained_labels.txt \
  --image_dir=./images

# 500 steps with 50 images in each movie produces ~ 75% test accuracy

# Three outputs:
# 	retrain_graph.py
# 	retrained_labels.txt
# 	training_summaries


# Step 3: Predict

# Option 1
# curl -L URL > label_image.py

# Option 2
# python label_image.py file_path/file_name
