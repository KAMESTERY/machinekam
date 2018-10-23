# machinekam
Kamestery Machine Learning

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
cd machinekam

# Create the MACHINEKAM Conda Environment
./cmd.sh py3.create

# Activate it
source activate MACHINEKAM # for UNIX like shells

# Install the dependencies
#TODO
```

## Getting Started with NimTorch

```{bash}
# Install nim
brew install miniconda nim

# Install NimTorch
conda create -n nimtorch -c fragcolor nimtorch

```

## PyTorch

* [TRANSLATION WITH A SEQUENCE TO SEQUENCE NETWORK AND ATTENTION](https://pytorch.org/tutorials/intermediate/seq2seq_translation_tutorial.html)

* [fairseq-py Facebook AI Research Sequence-to-Sequence Toolkit written in Python. (custom models for translation, summarization and other text generation tasks)](https://modelzoo.co/model/fairseq-py)

## TensorFlow

* [Building Your Own Neural Machine Translation System in TensorFlow](https://ai.googleblog.com/2017/07/building-your-own-neural-machine.html)

* [Text summarization with TensorFlow](https://ai.googleblog.com/2016/08/text-summarization-with-tensorflow.html)


## Miscellaneous

* [Education and Resources Site](http://www.matt-versaggi.com/mit_open_courseware/)
* [Installing R and Python in Anaconda for Biologists](https://chrisconlan.com/installing-r-python-anaconda-biologists/)
