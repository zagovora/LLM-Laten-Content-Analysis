# Comparing Large Language Models and Human Annotators in Latent Content Analysis

## Overview

This repository contains the code and data analysis scripts associated with the research paper **"Comparing Large Language Models and Human Annotators in Latent Content Analysis of Sentiment, Political Leaning, Emotional Intensity, and Sarcasm"** ([arXiv preprint](https://arxiv.org/abs/2501.02532)).

The study evaluates and compares the performance of seven state-of-the-art Large Language Models (LLMs) with human annotators in analyzing textual content across four key dimensions:

- **Sentiment analysis**
- **Political leaning classification**
- **Emotional intensity detection**
- **Sarcasm detection**

## Research Highlights

- Annotations were performed on a curated dataset of **100 textual items**, with **33 human annotators** and **8 LLM variants** (including GPT-4, Gemini, Llama-3.1-70B, and Mixtral 8x7B).
- The dataset resulted in **3,300 human and 19,200 LLM annotations**.
- Inter-rater reliability, consistency, and quality assessments were conducted for each model and compared to human annotations.
- Temporal consistency of LLMs was evaluated over three-time points to determine stability in their output.
- The study highlights that LLMs demonstrate **higher reliability than human annotators in sentiment analysis and political leaning classification**, but both struggle with sarcasm detection.

## Dataset

The dataset used in this study is available on **OSF**: [Dataset Link](https://osf.io/a43pj/?view_only=829339c653774ebb86123ca99b6551f5)

## Repository Structure

- `data/` - Preprocessed and raw datasets used in the study.
- `agreement/` - Analysis related to **RQ1 (inter-rater reliability and consistency)** and **RQ2 (temporal consistency of LLMs)**.
- `reliability-and-comparability/` - Analysis related to **RQ3 (quality comparison of LLM and human annotations)** and **RQ4 (comparability across different LLM models)**.

## How to Use

### Prerequisites

To run the code, install the required dependencies:

```bash
pip install -r requirements.txt
```

### Running the Analysis

We used **Python (Jupyter Notebook) and SPSS** for data analysis. The following steps outline how to reproduce the analysis:

#### Python (Jupyter Notebook)
- Navigate to the `agreeemnt/` directory and open the relevant Jupyter notebook.
- Run the cells sequentially to perform data preprocessing, annotation comparisons, and statistical analysis.

#### SPSS
-  Navigate to the `reliability-and-comparability/` directory and open the `.sav` dataset in SPSS.
- Use the provided syntax files or manually set up statistical tests as described in the paper.


## Citation

If you use this repository in your research, please cite:

```
@article{bojic2025latent,
  title={Comparing Large Language Models and Human Annotators in Latent Content Analysis of Sentiment, Political Leaning, Emotional Intensity, and Sarcasm},
  author={Bojić, Ljubiša and Zagovora, Olga and Zelenkauskaite, Asta and others},
  journal={arXiv preprint arXiv:2501.02532},
  year={2025}
}
```

## Contact

For any questions or issues, please contact **Ljubiša Bojić** ([ljubisa.bojic@ivi.ac.rs](mailto\:ljubisa.bojic@ivi.ac.rs)) or open an issue in this repository.



