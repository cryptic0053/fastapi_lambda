#!/bin/bash
rm -rf build
mkdir build

# Build Docker image
docker build -t fastapi-lambda .

# Extract /var/task contents into ./build
docker run --rm -v "$PWD/build:/temp" --entrypoint sh fastapi-lambda -c "cp -r /var/task/* /temp/"

cd build
zip -r9 ../deployment.zip .
cd ..
