# Neurithm

Code for the article **"Neurithm: a BCI-based Deep Learning Algorithm that Generates Speech from EEG Signals"** (F1000Research).

Authors: Hossam AbdelRahman, Noha Elmasry, Jana Hani Omran, Yassmin Ezzat Aly, Fatemah Hatem, Malak Mohamed Helmy, Sara AlKarimy

- Archived code (Zenodo): https://doi.org/10.5281/zenodo.[YYYYYYY]
- Extended data (Zenodo): https://doi.org/10.5281/zenodo.[XXXXXXX]
- Licence: MIT (see `LICENSE`)

## Repository contents

| Folder | Content |
|---|---|
| `ArEEG_Chars processing/` | Preprocessing, EEGNet and EEG Transformer training/evaluation notebooks for ArEEG_Chars (Arabic letters) |
| `ArEEG_Words processing/` | Preprocessing and training/evaluation notebooks for ArEEG_Words (Arabic words) |
| `Speech Decoding Processing/` | MATLAB preprocessing (`create_events.m`, `analysis.m`, `training.m`) and the training notebook for the English speech decoding dataset |
| `local server/` | Trained models (`models/`), prediction notebooks and the Flask inference API (`apiserver.py`) |
| `neurithm/` | Neurithm Flutter mobile application |

## Source data

The raw EEG is not included. Download it from the original records:

- ArEEG_Chars — Mendeley Data, V1 (2024). https://doi.org/10.17632/f2bgr7tdtt.1
- ArEEG_Words — Mendeley Data, V1 (2024). https://doi.org/10.17632/7m472ykkx7.1
- Speech decoding dataset — OSF (2025). https://doi.org/10.17605/OSF.IO/3ZFKU; OpenNeuro ds006104, https://doi.org/10.18112/openneuro.ds006104.v1.0.0

## Setup

```bash
pip install -r requirements.txt
```

The notebooks were run on Google Colab (Python 3.10, NVIDIA T4 GPU). Preprocessing parameters, model configurations and training settings are listed in Extended data 2.

## Citation

Please cite the article and the archived code (https://doi.org/10.5281/zenodo.[YYYYYYY]).
