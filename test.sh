#MV2_USE_CUDA=1 MV2_ENABLE_AFFINITY=0 MV2_SMP_USE_CMA=0 \
#    srun -p $1 -n1 --gres=gpu:1 --job-name=fast  \
    python WCT.py  --cuda \
    --content test/content --style test/style \
    --alpha 0.6 \
        2>&1 | tee ./test/test.log
