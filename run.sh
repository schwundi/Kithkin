#!/bin/bash
cd Docker
    docker build . -t adventure:latest
    cd ..
docker run -it -v $(pwd)/adventure:/adventure adventure:latest\
 bash -c 'cd /adventure && latexmk -pdf Kithkin.tex'
cp adventure/Kithkin.pdf .
