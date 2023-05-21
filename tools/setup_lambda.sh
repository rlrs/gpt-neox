#!/usr/bin/env bash

sudo apt install libaio-dev

python -m venv .venv/
. .venv/bin/activate
pip3 install torch --index-url https://download.pytorch.org/whl/cu118
pip install -r requirements/requirements.txt
pip install -r requirements/requirements-wandb.txt
python ./megatron/fused_kernels/setup.py install
