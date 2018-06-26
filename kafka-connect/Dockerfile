FROM confluentinc/cp-kafka-connect

RUN mkdir -p /opt/kafka-connect/jars
RUN apt-get -y update && apt-get install curl
RUN curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz" -o /tmp/mysql-connector-java-5.1.39.tar.gz \
&&  tar -xzf /tmp/mysql-connector-java-5.1.39.tar.gz -C /opt/kafka-connect/jars --strip-components=1 mysql-connector-java-5.1.39/mysql-connector-java-5.1.39-bin.jar