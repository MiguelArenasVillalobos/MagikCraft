# This is for CI testing
FROM magikcraft/minecraft:paper-1.14.2-graalvm


# Setup the working directory
RUN mkdir /srv/github-actions-app
WORKDIR /_server_

COPY magikcraft/scriptcraft scriptcraft
RUN mkdir plugins
COPY magikcraft/magik-scriptcraft.jar plugins/magik-scriptcraft.jar
COPY magikcraft/scriptcraft-plugins scriptcraft-plugins
COPY SMA/scriptcraft-tests scriptcraft-plugins/

# From here: https://vsupalov.com/docker-build-time-env-values/
ARG TEST_MODE_SETTING=true
ARG EULA_SETTING=true
ENV TEST_MODE=$TEST_MODE_SETTING
ENV MINECRAFT_EULA_ACCEPTED=$EULA_SETTING

# Run the tests
CMD ["java", "-jar", "minecraft.jar"]

