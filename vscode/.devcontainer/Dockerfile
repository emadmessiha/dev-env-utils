FROM ubuntu:20.04
USER root

ARG DEVUSER=root
ARG UID=1000
ARG APP_DIR="/home/${DEVUSER}/app"
ENV DEBIAN_FRONTEND="noninteractive"
ENV TZ="America/New_York"
RUN useradd -m ${DEVUSER} --uid=${UID}
usermod --password ${DEVUSER} ${DEVUSER}
RUN usermod -aG sudo ${DEVUSER}

RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

RUN apt-get update && apt-get -y install sudo
RUN apt-get update && apt-get -y install bash-completion

# do any provisioning here

USER $DEVUSER

RUN echo "================== Installations complete"
