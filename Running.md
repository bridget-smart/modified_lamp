

**https://github.com/google-research/google-research/tree/master/lamp**

https://github.com/bridget-smart/google-research/tree/master/lamp

https://arxiv.org/pdf/1704.01255.pdf

# BrightKite

```
time ./lamp --max_outer_iter=3 --grad_max_weight_iter=30 --grad_max_transitions_iter=30 --max_train_time=2010 --dataset=brightkite --plot_file ../data/brightkite-performance.tsv --min_location_count 10 --max_lamp_order 7 2>&1 | tee brightkite.log

./plotall.sh ../data/brightkite-performance.tsv brightkite
```

# Last Fm

```
time ./lamp --max_outer_iter=3 --grad_max_weight_iter=10 --grad_max_transitions_iter=10 --max_train_time=2009-02 --dataset=lastfm --plot_file ../data/lastfm-performance.tsv --min_location_count 50 --lastfm_max_users 1000 --max_lamp_order 7 --max_ngram_order 4


./plotall.sh ../data/lastfm-performance.tsv lastfm 10000
```



# Reuters

```
time ./lamp --max_outer_iter=3 --grad_max_weight_iter=30 --grad_max_transitions_iter=30 --dataset=reuters --plot_file ../data/reuters-performance.tsv --min_location_count 10 --max_lamp_order 7

./plotall.sh ../data/reuters-performance.tsv reuters 500
```



# Wiki

```
./lamp --max_outer_iter=3 --grad_max_weight_iter=30 --grad_max_transitions_iter=30 --num_folds 10 --dataset=wiki --plot_file ../data/wiki-performance.tsv --min_location_count 10 --max_lamp_order 7 2>&1 | tee wiki.log

./plotall.sh ../data/wiki-performance.tsv wiki
```