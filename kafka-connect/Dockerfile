FROM confluentinc/cp-kafka-connect

RUN mkdir -p /opt/kafka-connect/jars
RUN apt-get -y update && apt-get -y install curl
RUN curl -k -SL "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.11.tar.gz" -o /tmp/mysql-connector-java-8.0.11.tar.gz \
&&  tar -xzf /tmp/mysql-connector-java-8.0.11.tar.gz -C /opt/kafka-connect/jars --strip-components=1 mysql-connector-java-8.0.11/mysql-connector-java-8.0.11.jar
RUN ln -s /opt/kafka-connect/jars/mysql-connector-java-8.0.11.jar /usr/share/java/kafka-connect-jdbc/