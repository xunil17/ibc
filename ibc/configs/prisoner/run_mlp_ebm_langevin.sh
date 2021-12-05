#!/bin/bash

## Use "N" of the N-d environment as the arg

python3 ibc/ibc/train_eval.py -- \
  --alsologtostderr \
  --gin_file=ibc/ibc/configs/prisoner/mlp_ebm_langevin.gin \
  --task=PRISONER \
  --tag=langevin \
  --add_time=True \
  --gin_bindings="train_eval.dataset_path='ibc/data/prisoner/prisoner.tfrecord'" \
  --gin_bindings="PrisonerGoalEnv" \
  --video
