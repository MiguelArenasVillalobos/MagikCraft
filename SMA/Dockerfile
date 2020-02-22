# This is for CI in GitHub Actions - runs tests
ARG image_tag
FROM magikcraft/minecraft:${image_tag}

# Setup the working directory
RUN mkdir /srv/github-actions-app
WORKDIR /_server_

COPY build/ ./
COPY SMA/scriptcraft-tests scriptcraft-plugins/scriptcraft-tests

# Accept Minecraft EULA
RUN echo "eula=true" >> eula.txt

# From here: https://vsupalov.com/docker-build-time-env-values/
ARG TEST_MODE_SETTING=true
ENV TEST_MODE=$TEST_MODE_SETTING

# Run the tests
RUN /_server_/start.sh
