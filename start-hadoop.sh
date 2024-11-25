#!/bin/bash

# Fuente las variables de entorno
. /vagrant/hadoop-env-user.sh

# Iniciar HDFS
$HADOOP_HOME/sbin/start-dfs.sh

# Iniciar YARN
$HADOOP_HOME/sbin/start-yarn.sh
