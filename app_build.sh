#!/bin/bash

echo "Build image from Dockerfile"

docker build -t servian-go .

echo "Starting DB related conatiner"

docker run -d servian-go updatedb

echo "statring app conatiner"

docker run -d -p 3000:3000 servian-go serve


