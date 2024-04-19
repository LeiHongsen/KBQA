#!/bin/bash
# DO NOT use quantized model or quantization_bit when merging lora weights

CUDA_VISIBLE_DEVICES=0 python ../../src/export_model.py \
    --model_name_or_path ../../model_hub/Baichuan2-7B-Base \
    --adapter_name_or_path ../../saves/Baichuan2-7B-Base/lora/sft \
    --template default \
    --finetuning_type lora \
    --export_dir ../../model_hub/Baichuan2-7B-Base-sft \
    --export_size 5 \
    --export_legacy_format False
