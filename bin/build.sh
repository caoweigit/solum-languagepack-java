#!/bin/bash

# Check maven
mvn -v
[[ $? != 0 ]] && echo "maven is not installed" && exit 1

# build
cd /app
echo "mvn -q package"

# copy .war file

