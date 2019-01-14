# machinekam
Kamestery Machine Learning

## Launch Project
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/KAMESTERY/machinekam.git/master)

## Git Setup

```{bash}
# Clone the main repository
git clone https://github.com/KAMESTERY/machinekam.git my_machinekam

# Now navigate to https://github.com/KAMESTERY/machinekam and fork the remository
# Then add you fork as a remote
cd my_machinekam
git remote add my_machinekam https://github.com/yourusername/machinekam

# List your remotes
git remote
#-output-> my_webkam
#-output-> origin

# Make changes and push them to your fork
git push -u my_machinekam master

# And navigate to https://github.com/yourusername/machinekam and create a pull request

# Finally pull new changes from origin
git pull origin master

# That completes your git workflow for contributing to this project. Thank you!

```

## Project Setup

```{bash}
# Install miniconda, nim, and R
brew tap homebrew/science # MacOS
brew install Caskroom/cask/xquartz # MacOS
brew install r # MacOS
brew install miniconda nim R # MacOS

# Go to machinekam
cd machinekam

# Create the MACHINEKAM Conda Environment
conda env create -f environment.yml

# Activate it
source activate MACHINEKAM # for UNIX like shells
```

## PyTorch

* [TRANSLATION WITH A SEQUENCE TO SEQUENCE NETWORK AND ATTENTION](https://pytorch.org/tutorials/intermediate/seq2seq_translation_tutorial.html)

* [fairseq-py Facebook AI Research Sequence-to-Sequence Toolkit written in Python. (custom models for translation, summarization and other text generation tasks)](https://modelzoo.co/model/fairseq-py)

## TensorFlow

* [Building Your Own Neural Machine Translation System in TensorFlow](https://ai.googleblog.com/2017/07/building-your-own-neural-machine.html)

* [Text summarization with TensorFlow](https://ai.googleblog.com/2016/08/text-summarization-with-tensorflow.html)

## R, ML, Deep Learning

* [Tidyverse packages](https://www.tidyverse.org/packages/)
* [R Interface to Python](https://rstudio.github.io/reticulate/)
* [R Interface to TensorFlow](https://tensorflow.rstudio.com/)

## Miscellaneous

* [Harvard University -- An end to end tutorial of a machine learning pipeline](https://github.com/Spandan-Madan/DeepLearningProject)
* [The Power of Headless Chrome](https://developers.google.com/web/tools/puppeteer/)
* [Puppeteer](https://pptr.dev/)
* [Education and Resources Site](http://www.matt-versaggi.com/mit_open_courseware/)
* [Installing R and Python in Anaconda for Biologists](https://chrisconlan.com/installing-r-python-anaconda-biologists/)
