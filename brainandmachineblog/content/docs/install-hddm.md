---
title: Install HDDM 0.9 package(2022.07)
date: 2022-07-10
authorbox: false
categories:
- "Computational Psychiatry"
tags:
- "Modelling"
- "Decision Making"
- "Bayesian"
---

Install Hierachical Drift Diffusion Model via Conda.

<!--more-->

> HDDM is a python toolbox for hierarchical Bayesian parameter estimation of the Drift Diffusion Model (via PyMC). Drift Diffusion Models are used widely in psychology and cognitive neuroscience to study decision making.(https://github.com/hddm-devs/hddm)

## How to install HDDM

1. Create conda environment and activate it

```
conda create --name hdmm-0.9 python=3.9
conda activate hdmm-0.9
```

PS. If you want to set the environment as default, go to `~/.zshrc` or `~/.bashrc` and add this line: `conda activate hddm-0.9`.

PSS. To remove any environment, go back to base environment `conda activate base`, then remove what you want by `conda env remove -n hdmm-0.9`.

2. Install package using **conda**(do not use pip, incompatibile issues!)

```
conda install cython
conda install pymc==2.3.8
conda install git pip
pip install git+https://github.com/hddm-devs/kabuki
pip install git+https://github.com/hddm-devs/hddm
# Optional
conda install torch torchvision torchaudio -->
```

3. Test if HDDM successfully installed

Test the codes below in a python script.

```python
import hddm

# Load data from csv file into a NumPy structured array
data = hddm.load_csv('simple_difficulty.csv')

# Create a HDDM model multi object
model = hddm.HDDM(data, depends_on={'v':'difficulty'})

# Create model and start MCMC sampling
model.sample(2000, burn=20)

# Print fitted parameters and other model statistics
model.print_stats()

# Plot posterior distributions and theoretical RT distributions
model.plot_posteriors()
model.plot_posterior_predictive()
```