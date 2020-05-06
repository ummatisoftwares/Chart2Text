python3 model/train.py \
    --model_path "experiments" \
    --exp_name "chart2text" \
    --exp_id "run1" \
    --train_cs_table_path data/train/trainData.txt.pth \
    --train_sm_table_path data/train/trainData.txt.pth \
    --train_sm_summary_path data/train/trainSummary.txt.pth \
    --valid_table_path data/valid/validData.txt.pth \
    --valid_summary_path data/valid/validSummary.txt.pth \
    --cs_step True \
    --lambda_cs "1" \
    --sm_step True \
    --lambda_sm "1" \
    --label_smoothing 0.05 \
    --sm_step_with_cc_loss False \
    --sm_step_with_cs_proba False \
    --share_inout_emb True \
    --share_srctgt_emb False \
    --sinusoidal_embeddings False \
    --emb_dim 512 \
    --enc_n_layers 1 \
    --dec_n_layers 6 \
    --dropout 0.1 \
    --save_periodic 40 \
    --batch_size 6 \
    --beam_size 4 \
    --epoch_size 1000 \
    --max_epoch 121 \
    --eval_bleu True \
    --validation_metrics valid_mt_bleu


python3 model/summarize.py --model_path periodic-100.pth --table_path data/test/testData.txt \
--output_path templateOutput_504_beam=4_batch=8.txt --beam_size 4 --batch_size 8


python3 model/summarize.py --model_path periodic-75.pth --table_path data_testing/trainData.txt \
--output_path data_testing/504Test_beam=4_batch=8.txt --beam_size 4 --batch_size 8