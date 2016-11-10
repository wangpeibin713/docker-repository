spark-shell \
 --master yarn \
 --deploy-mode client \
 --driver-memory 1g \
 --executor-memory 1g \
 --jars jars/spark-yarn_2.11-2.0.1.jar,jars/spark-core_2.11-2.0.1.jar,jars/spark-sql_2.11-2.0.1.jar,jars/spark-repl_2.11-2.0.1.jar \
 --executor-cores 1