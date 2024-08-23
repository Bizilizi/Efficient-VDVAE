#!/bin/bash


export NUM_GPUS_PER_NODE=2
export NCCL_LL_THRESHOLD=0

# launch your script w/ `torch.distributed.launch`
python -m torch.distributed.run \
    --standalone \
    --nnodes=1 \
    --nproc_per_node=$NUM_GPUS_PER_NODE \
    train.py \
    --output_dir /scratch/shared/beegfs/dzverev/gen_collaps/vdvae/step_0/
    # include any arguments to your script, e.g:
    #    --seed 42
    #    etc.