#!/usr/bin/env bash

sudo apt install libaio-dev

python -m venv .venv/
. .venv/bin/activate
pip install --upgrade pip wheel
pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install -r requirements/requirements.txt
pip install -r requirements/requirements-wandb.txt
pip install -r requirements/requirements-flashattention.txt
python ./megatron/fused_kernels/setup.py install

## Install APEX
pip install -v --disable-pip-version-check --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" git+https://github.com/NVIDIA/apex.git@a651e2c24ecf97cbf367fd3f330df36760e1c597