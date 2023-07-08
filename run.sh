#!/bin/bash

echo "Initializing the spark Job ....."

echo $(pwd)

echo $(whoami)
# Run spark job
/home/hadoop/spark-3.3.2-bin-hadoop3/bin/spark-submit --conf spark.yarn.am.memory=1g --conf spark.executor.cores=2 --driver-memory 1g --executor-memory 2g /home/hadoop/mig/TestScript.py

status=$?
if [ $status -eq 0 ]; then
    echo "************** Saprk Job Completed Successfully *************"
else
    echo "!! Spark job failed while execution, plase check error log for more details !!"
fi

sleep 5
