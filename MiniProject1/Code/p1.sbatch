#!/bin/bash 
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2
#SBATCH --time=4:00:00
#SBATCH --mem=8GB
#SBATCH --job-name=p1
#SBATCH --output=p1.out

module purge
module load anaconda3/2020.07
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh
conde activate ~/penv
export PATH=~/penv/bin:$PATH

python ~/code/p1.py --bs 128 --lr 0.1 --decay_step 40