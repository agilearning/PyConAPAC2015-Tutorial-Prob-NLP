
FROM c3h3/pyenv-opencv-shogun:agilearning

MAINTAINER Chia-Chi Chang <c3h3.tw@gmail.com>


RUN mkdir /demo && cd /demo && git clone https://github.com/c3h3/learning-shogun.git /demo_ipynbs && cd /demo_ipynbs && git submodule init && git submodule update 
RUN cd /demo && git clone https://github.com/fxsjy/jieba.git && cd /demo/jieba && python setup.py install
RUN pip install nltk gensim python-crfsuite


WORKDIR /demo



