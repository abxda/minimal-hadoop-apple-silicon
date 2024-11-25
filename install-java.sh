#!/bin/sh

sudo apt-get -y update && \
sudo apt-get install --no-install-recommends -y openjdk-11-jre-headless ca-certificates-java

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
bash Miniconda3-latest-Linux-aarch64.sh -b -p /usr/local/miniconda

/usr/local/miniconda/bin/conda create -n bigdata python=3.8 -y
/usr/local/miniconda/bin/conda install -n bigdata -c conda-forge jupyterlab pyspark findspark kafka-python sseclient seaborn -y

chmod -R 777 /usr/local/miniconda/

sudo cp /vagrant/myenvvars.sh /etc/profile.d/myenvvars.sh
