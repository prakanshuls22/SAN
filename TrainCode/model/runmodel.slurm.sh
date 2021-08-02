#!/bin/bash
#SBATCH --nodelist=gpu006
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32  
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu
#SBATCH --job-name="SISR_2"


cd /scratch/ssrivastava.cse18.iitbhu
source ensr/bin/activate
module load cuda/10.1
cd /scratch/ssrivastava.cse18.iitbhu/SAN/TrainCode/
python main.py --model ensr --save ENSR_2 --scale 2 --reset --save_results --patch_size 448 --loss 1*VGG