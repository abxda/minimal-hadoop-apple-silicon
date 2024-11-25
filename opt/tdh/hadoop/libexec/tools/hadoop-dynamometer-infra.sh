#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
#
# IMPORTANT: This file is automatically generated by hadoop-dist at
#            -Pdist time.
#
#

function hadoop_classpath_tools_hadoop-dynamometer-infra
{
  if [[ -f "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/junit-4.13.2.jar" ]]; then
    hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/junit-4.13.2.jar"
  fi
  if [[ -f "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hamcrest-core-1.3.jar" ]]; then
    hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hamcrest-core-1.3.jar"
  fi
  if [[ -f "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-client-3.3.5.jar" ]]; then
    hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-client-3.3.5.jar"
  fi
  if [[ -f "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-minicluster-3.3.5.jar" ]]; then
    hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-minicluster-3.3.5.jar"
  fi
  if [[ -f "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-dynamometer-workload-3.3.5.jar" ]]; then
    hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-dynamometer-workload-3.3.5.jar"
  fi
  hadoop_add_classpath "${HADOOP_TOOLS_HOME}/${HADOOP_TOOLS_LIB_JARS_DIR}/hadoop-dynamometer-infra-3.3.5.jar"
}
