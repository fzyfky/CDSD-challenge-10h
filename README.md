# Dysarthria Speech Recognition Challenge-Speaker Dependence-10h

## Introduction

This repository is the baseline code for the CDSD (Chinese Dysarthria Speech Database) Challenge.

The code in this repository is based on the Wenet(https://github.com/wenet-e2e/wenet)

## Data Preparation

Before running this baseline, you should have downloaded and unzipped the dataset for this challenge, whose folder structure is as follows:

```
CDSD-1h
├── 01、02、04、06、08、09、10
│   ├── wav
│   │   ├── dev
│   │   ├── test
│   │   └── train
│   └── transcript

```

### Notice

We have released the latest data of the training and development sets and fixed the issue with incorrect information that was reported by some teams. We strongly recommend you to get them from the download links in the email and replace all audio and labels from the previously downloaded training and development sets.

## Environment Setup

```
conda create -n wenet python=3.8
conda activate wenet
pip install -r requirements.txt

# install other dependence
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

| Model      | Test set        |   WER   |
| ---------- | --------------- | ------- | 
| CDSD-SD-01 | CDSD-10h-01     |  10.91  |
| CDSD-SD-04 | CDSD-10h-04     |  31.16  |
| CDSD-SD-06 | CDSD-10h-06     |  42.55  | 
| CDSD-SD-08 | CDSD-10h-08     |  24.83  |
| CDSD-SD-09 | CDSD-10h-01     |  24.30  |
| CDSD-SD-10 | CDSD-10h-10     |  29.60  |
| CDSD-SD-12 | CDSD-10h-12     |  13.08  |


## Notice

- The baseline code we provided will output FAR and FRR under different thresholds during the test phase (stage 3). However, in the test phase of the challenge, participants are only allowed to submit a final wake-up result for each speech clip. Also, during the test phase, we will not provide annotations for eval in the test set. This means that participants need to think about how to choose the appropriate threshold.
- Participants may use all methods to improve the final results, including the use of pre-trained models and other open-source datasets, provided that this is explicitly stated in the final paper or system report submitted.
- If the scores of the two teams on the test data set are the same, the system with lower computation complexity will be judged as the superior one. In this case, participants will be asked to provide proof of computational complexity. Therefore, participants are strongly advised to retain their code for verification purposes.

## License

It is noted that the code can only be used for comparative or benchmarking purposes.  Users can only use code supplied under a License for non-commercial purposes.

## Contact

Please contact e-mail [lrdwws_challenge@aishelldata.com](mailto:lrdwws_challenge@aishelldata.com) if you have any queries.
