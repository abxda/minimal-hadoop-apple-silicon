#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export JAVA_HOME=${JAVA_HOME:-"/usr/lib/jvm/java-11-openjdk-arm64"}
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/vagrant/opt/tdh/hadoop"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/vagrant/opt/tdh/hadoop"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/vagrant/opt/tdh/hadoop/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/vagrant/opt/tdh/hadoop"}
export HADOOP_HOME=${HADOOP_HOME:-"/vagrant/opt/tdh/hadoop"}
export PATH=${PATH:-"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"}
export LANG=${LANG:-"en_US.UTF-8"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/appcache/application_1732511382050_0003/container_1732511382050_0003_01_000010/container_tokens"
export CONTAINER_ID="container_1732511382050_0003_01_000010"
export NM_PORT="35025"
export NM_HOST="vagrant"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/appcache/application_1732511382050_0003"
export LOCAL_USER_DIRS="/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/"
export LOG_DIRS="/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010"
export USER="vagrant"
export LOGNAME="vagrant"
export HOME="/home/"
export PWD="/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/appcache/application_1732511382050_0003/container_1732511382050_0003_01_000010"
export LOCALIZATION_COUNTERS="0,381983,0,4,3"
export JVM_PID="$$"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export STDOUT_LOGFILE_ENV="/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/stdout"
export SHELL="/bin/bash"
export HADOOP_ROOT_LOGGER="INFO,console"
export HADOOP_MAPRED_HOME="${HADOOP_HOME}"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export STDERR_LOGFILE_ENV="/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/stderr"
export HADOOP_CLIENT_OPTS=""
export MALLOC_ARENA_MAX="4"
echo "Setting up job resources"
ln -sf -- "/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/appcache/application_1732511382050_0003/filecache/13/job.xml" "job.xml"
ln -sf -- "/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/filecache/15/reducer.py" "reducer.py"
ln -sf -- "/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/appcache/application_1732511382050_0003/filecache/11/job.jar" "job.jar"
ln -sf -- "/tmp/hadoop-vagrant/nm-local-dir/usercache/vagrant/filecache/14/mapper.py" "mapper.py"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/launch_container.sh"
chmod 640 "/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
ls -l 1>>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
find -L . -maxdepth 5 -ls 1>>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.net.preferIPv4Stack=true -Dhadoop.metrics.log.level=WARN   -Xmx820m -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog org.apache.hadoop.mapred.YarnChild 127.0.1.1 40981 attempt_1732511382050_0003_m_000001_3 10 1>/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/stdout 2>/vagrant/opt/tdh/hadoop/logs/userlogs/application_1732511382050_0003/container_1732511382050_0003_01_000010/stderr "
