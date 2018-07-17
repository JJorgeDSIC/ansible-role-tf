#/bin/bash

export HADOOP_HOME=/opt/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$SPARK_HOME/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export HADOOP_HDFS_HOME=/opt/hadoop-2.9.0
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${JAVA_HOME}/jre/lib/amd64/server
export CLASSPATH=$(${HADOOP_HDFS_HOME}/bin/hadoop classpath --glob)

python3 distributed_example_hdfs.py
