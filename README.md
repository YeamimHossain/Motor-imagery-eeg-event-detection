# Motor Imagery EEG Event Detection

This repository contains implementations for **motor imagery EEG event detection** using classical feature extraction, feature selection, and machine learning techniques. The project focuses on detecting motor imagery events from EEG signals, which is a fundamental task in **Brain–Computer Interface (BCI)** research.

The work demonstrates how signal processing and machine learning methods can be applied to EEG data to identify meaningful brain activity patterns related to imagined motor movements.

---

## 📌 Project Overview

Motor imagery EEG signals are widely used in BCI systems to enable communication and control without physical movement. This project implements a complete pipeline that includes:

- EEG feature extraction (time and frequency domain)
- Feature selection using statistical and heuristic methods
- Classification using Support Vector Machine (SVM)
- Performance evaluation using standard metrics

An average **F1-score of approximately 68.69%** was achieved using the selected features and SVM classifier.

---

## 📂 Repository Structure

```
Motor-imagery-eeg-event-detection/
├── Evaluate.m
├── confusionmatStats.m
├── feat_extract.m
├── feat_sel.m
├── ffs.m
├── trainClassifier.m
├── train_test_evaluate.m
├── README.md
└── LICENSE
```

### File Description

- **feat_extract.m** — Extracts time- and frequency-domain EEG features  
- **feat_sel.m** — Performs feature selection using MRMR  
- **ffs.m** — Forward Feature Selection implementation  
- **trainClassifier.m** — Trains the SVM classifier  
- **train_test_evaluate.m** — End-to-end training and testing pipeline  
- **Evaluate.m / confusionmatStats.m** — Performance evaluation metrics  

---

## 🚀 Getting Started

### Requirements

- **MATLAB** (recommended R2018a or later)
- EEG dataset formatted according to the scripts (dataset path must be set manually)

---

### How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/YeamimHossain/Motor-imagery-eeg-event-detection.git
   ```

2. Open the project folder in MATLAB.

3. Set dataset paths as required in the scripts.

4. Run the pipeline:
   - Feature extraction → `feat_extract.m`
   - Feature selection → `feat_sel.m`
   - Training & testing → `train_test_evaluate.m`

---

## 📈 Performance

- Classifier: **Support Vector Machine (SVM)**
- Feature selection: **MRMR + Forward Feature Selection**
- Evaluation metric: **F1-score**
- Average performance: **~68.69% F1-score**

---

## 🧠 Applications

This work is applicable to:

- Brain–Computer Interfaces (BCIs)
- Assistive technologies for motor-impaired individuals
- EEG signal processing research
- Cognitive neuroscience experiments

---

## 🔮 Future Work

- Deep learning–based motor imagery classification
- Cross-subject generalization
- Real-time BCI implementation
- Dataset expansion and benchmarking

---

## 📝 License

This project is licensed under the **MIT License**.  
See the `LICENSE` file for details.

---

⭐ If you find this repository useful, please consider starring it!
