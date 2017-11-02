FROM ubuntu:16.04

MAINTAINER dve <dve@vergien.net>

RUN apt-get clean && apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    texlive-base \
    texlive-binaries \ 
    texlive-extra-utils \
    texlive-font-utils \
    texlive-fonts-recommended \
    texlive-generic-extra \
    texlive-generic-recommended \
    texlive-lang-german \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-pictures \
    texlive-pstricks \
    python3-sphinxcontrib.plantuml \
    python3-sphinxcontrib.blockdiag \
    python3-sphinxcontrib.actdiag \
    python3-sphinxcontrib.nwdiag \
    python3-sphinxcontrib.seqdiag \
    python3-pip \
    python3-setuptools \
    latexmk

RUN pip3 install --upgrade pip

#Install Sphinx with Nice Theme&Extention
RUN pip install -U \
    sphinxbootstrap4theme 

CMD ["python3"]
