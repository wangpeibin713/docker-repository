spark-shell \
 --master yarn \
 --deploy-mode client \
 --driver-memory 1g \
 --executor-memory 1g \
 --executor-cores 1


spark-submit \
 --class org.apache.spark.examples.SparkPi \
 --master yarn \
 --deploy-mode client \
 --driver-memory 1g \
 --executor-memory 1g \
 --executor-cores 1 \
 $SPARK_HOME/examples/jars/spark-examples_2.11-2.0.1.jar