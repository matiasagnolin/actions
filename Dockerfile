FROM java:8-jdk-alpine

COPY ./target/dataservice-0.0.1-SNAPSHOT.jar /usr/share

WORKDIR /usr/share

RUN sh -c 'touch dataservice-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","dataservice-0.0.1-SNAPSHOT.jar"]

