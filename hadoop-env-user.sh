#!/bin/bash

# Configurar JAVA_HOME al directorio de instalación de Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-arm64

# Configurar HADOOP_HOME
export HADOOP_ROOT="/vagrant/opt/tdh"
export HADOOP_HOME="$HADOOP_ROOT/hadoop"

# Variables de entorno de Hadoop
export HADOOP_CONF_DIR="$HADOOP_HOME/etc/hadoop"
export HADOOP_COMMON_HOME="$HADOOP_HOME"
export HADOOP_HDFS_HOME="$HADOOP_HOME"
export HADOOP_MAPRED_HOME="$HADOOP_HOME"
export YARN_HOME="$HADOOP_HOME"

# Actualizar el PATH para incluir Hadoop y otras herramientas
export PATH="$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH"

# Configurar LD_LIBRARY_PATH para las bibliotecas nativas
export LD_LIBRARY_PATH="$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH"

# Exportar cualquier otra variable de entorno necesaria
