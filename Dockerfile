# Utilizar una imagen base de Ubuntu
FROM ubuntu:latest

# Actualizar el índice de paquetes e instalar Java 17
RUN apt-get update && apt-get install -y openjdk-17-jdk

# Instalar MySQL
RUN apt-get install -y mysql-server

# Configurar MySQL
# - Iniciar el servicio MySQL
# - Crear un usuario admin con contraseña admin
# - Crear la base de datos pokemon
# - Dar todos los permisos al usuario admin en la base de datos pokemon
RUN service mysql start \
    && mysql -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';" \
    && mysql -e "CREATE DATABASE pokemon;" \
    && mysql -e "GRANT ALL PRIVILEGES ON pokemon.* TO 'admin'@'localhost';" \
    && mysql -e "FLUSH PRIVILEGES;"

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR de la subcarpeta 'target' al directorio de trabajo del contenedor
COPY target/API_POKEMON_CRUD-0.0.1-SNAPSHOT.jar /app/API_POKEMON_CRUD-0.0.1-SNAPSHOT.jar

# Especificar el comando de entrada para ejecutar el archivo JAR
ENTRYPOINT ["java", "-jar", "/app/API_POKEMON_CRUD-0.0.1-SNAPSHOT.jar"]
