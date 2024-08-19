. venv/bin/activate
which python
# accelerate launch 
accelerate launch train.py \
  --model_name_or_path "microsoft/deberta-v2-xlarge-mnli" \
  --ignore_mismatched_sizes \
  --max_length 80 \
  --per_device_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 1 \
  --output_dir "/tmp/mrpc/deepspeed_stage2/" \
  --train_file data/train_fold_0.csv \
  --validation_file data/test_fold_0.csv \
  --with_tracking \
  --report_to "wandb"

q
# other models to test
# BERT: bert-base-uncased
# RoBERTa: roberta-base
# T5: t5-xlarge
