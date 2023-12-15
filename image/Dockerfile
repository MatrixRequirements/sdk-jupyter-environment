FROM quay.io/jupyter/minimal-notebook

# Gots to do some javascript thing.s
USER root
RUN apt-get update
RUN apt-get -y install make
RUN apt-get -y install g++
RUN npm -g install --unsafe-perm ijavascript-await
RUN ijsinstall --install=global

RUN chown -R jovyan /home/jovyan

USER ${NB_UID}
