#!/bin/sh
mvn clean package && docker build -t com/SCFM .
docker rm -f SCFM || true && docker run -d -p 9080:9080 -p 9443:9443 --name SCFM com/SCFM