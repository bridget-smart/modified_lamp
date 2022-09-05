#!/bin/bash
#SBATCH -p batch # Partition (this is the queue your job will be added to)
#SBATCH -N 1 # Number of nodes
#SBATCH -n 4 # Number of CPU cores
#SBATCH --time=2-00:00:00 # Approx. time to run (2 day in this case)
#SBATCH --mem=200GB # Total memory required (this is a big one)
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-user=a1742577@adelaide.edu.au

make all

time ./lamp --max_outer_iter=3 --grad_max_weight_iter=30 --grad_max_transitions_iter=30 --num_folds 10 --dataset=wiki --plot_file ../data/wiki-performance.tsv --min_location_count 10 --max_lamp_order 7 2>&1 | tee wiki.log

./plotall.sh ../data/wiki-performance.tsv wiki
