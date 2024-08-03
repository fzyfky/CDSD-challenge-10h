# Dysarthria Speech Recognition Challenge-Speaker Dependence-10h

## Introduction

This repository is the baseline code for the CDSD-10h (Chinese Dysarthria Speech Database) Challenge .

The code in this repository is based on the Wenet(https://github.com/wenet-e2e/wenet)

## Data Preparation

Before running this baseline, you should have downloaded and unzipped the dataset for this challenge, whose folder structure is as follows:

```
CDSD-10h
├── 01、02、04、06、08、09、10
│   ├── wav
│   │   ├── dev
│   │   ├── test
│   │   └── train
│   └── transcript


```

### Notice

We have released the latest data of the training and development sets and fixed the issue with incorrect information that was reported by some teams. 
## Environment Setup

```
conda create -n wenet python=3.8
conda activate wenet
pip install -r requirements.txt

```

## Baseline

```
cd s0
```

The baseline system consists of three stages of training:

1. Data preprocessing, dictionary creation, data preparation

   ```
   bash run.sh --stage 0 --stop-stage 3
   ```

2. Start training

   ```
   bash run.sh --stage 4 --stop-stage 4
   ```

3. decoder,calculate wer

   ```
   bash run.sh --stage 5 --stop-stage 5
   ```

### Results of dev set

CDSD-10h-SD                                                           
| Model       | Test set        |   CER   |                           
| ----------  | --------------- | ------- |                                    
| CDSD-10h-01 | CDSD-10h-01     |  10.91  |                    
| CDSD-10h-04 | CDSD-10h-04     |  31.16  |
| CDSD-10h-06 | CDSD-10h-06     |  42.55  | 
| CDSD-10h-08 | CDSD-10h-08     |  24.83  |
| CDSD-10h-09 | CDSD-10h-01     |  24.30  |
| CDSD-10h-10 | CDSD-10h-10     |  29.60  |
| CDSD-10h-12 | CDSD-10h-12     |  13.08  |


## Notice

- Participants may use all methods to improve the final results, including the use of pre-trained models and other open-source datasets, provided that this is explicitly stated in the final paper or system report submitted.
- If the scores of the two teams on the test data set are the same, the system with faster speech recognition speed will be judged as superior.. In this case, participants will be asked to provide proof of computational complexity. Therefore, participants are strongly advised to retain their code for verification purposes.

## License

It is noted that the code can only be used for comparative or benchmarking purposes.  Users can only use code supplied under a License for non-commercial purposes.

## Contact

Please contact e-mail [1296630808@qq.com](mailto:1296630808@qq.com) if you have any queries.
