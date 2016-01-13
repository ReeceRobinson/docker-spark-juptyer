#!/bin/bash
cd /apps
args=("$@")

# If a 'd' is passed as the first argument then the docker container will present the shell prompt only if run in interactive mode.
# Otherwise the spark-shell is executed.
if [[ ${args[0]} == "d" ]]
        then    /bin/bash
	else	SPARK_JAVA_OPTS='-XX:-UseGCOverheadLimit -XX:+UseConcMarkSweepGC -Xmx4g -Xms2g -XX:MaxPermSize=256m'
		/bin/bash -c "$SPARK_HOME/bin/spark-shell"
fi
