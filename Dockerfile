# Build stage
FROM maven:3.9.9-eclipse-temurin-21 AS build
COPY . .
RUN mvn clean package -DskipTests

# Run stage
FROM eclipse-temurin:21-jre-alpine
# ⚠️ 중요: 앞에 target/ 을 정확히 붙여주어야 합니다!
COPY --from=build /target/lec25.1-0.0.1-SNAPSHOT.jar taco.jar

EXPOSE 8085
ENTRYPOINT ["java", "-jar", "taco.jar"]