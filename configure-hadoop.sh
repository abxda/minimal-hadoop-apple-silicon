#!/bin/bash

# Añadir configuración a ~/.bashrc si no existe
if ! grep -q 'hadoop-env-user.sh' ~/.bashrc; then
  echo "if [ -f /vagrant/hadoop-env-user.sh ]; then" >> ~/.bashrc
  echo "  . /vagrant/hadoop-env-user.sh" >> ~/.bashrc
  echo "fi" >> ~/.bashrc
fi

# Cargar variables de entorno
source ~/.bashrc
source /vagrant/hadoop-env-user.sh

# Generar clave SSH si no existe
if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
fi

# Configurar autorizaciones SSH
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

# Crear directorios HDFS
mkdir -p ~/hdfs/namenode
mkdir -p ~/hdfs/datanode

# Formatear el Namenode
hdfs namenode -format