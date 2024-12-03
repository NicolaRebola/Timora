# Usa una imagen base de JDK 17
FROM eclipse-temurin:17-jdk-alpine as build
WORKDIR /app

# Copia el archivo pom.xml y descarga dependencias
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copia el código fuente y compílalo
COPY src ./src
RUN mvn clean package -DskipTests

# Usa una imagen más ligera para ejecutar la app
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Configura el punto de entrada
ENTRYPOINT ["java", "-jar", "app.jar"]
