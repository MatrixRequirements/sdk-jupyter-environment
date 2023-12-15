#!/bin/sh
docker run -it --rm -v "${PWD}/work":/home/jovyan/work -p 8888:8888 my-first-jupyter
