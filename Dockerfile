#FROM maven:3.8.2-openjdk-11
#WORKDIR /shopping_cart
#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:go-offline
#COPY src ./src
#CMD ["./mvnw", "spring-boot:run"]

FROM maven:3.8.2-openjdk-11
WORKDIR /shopping_cart
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD mvn spring-boot:run
