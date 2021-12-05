#!/bin/bash

python3 ibc/data/policy_eval.py -- \
 --alsologtostderr \
 --num_episodes=200 \
 --task=PRISONER \
 --dataset_path=ibc/data/prisoner/prisoner.tfrecord \
 --replicas=1  \
 --use_image_obs=False
