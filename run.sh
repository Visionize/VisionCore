#! /bin/sh
#
# run.sh
# Copyright (C) 2019 nishkrit <nishkrit@bionicdell>
#
# Distributed under terms of the MIT license.
#

#Build the latest docker image
if [[ "$@" == *"build"* ]]; then
    echo "Building Container"
    sudo docker build -t visioncore .
    echo "Finished building container"
fi

#Start the docker container
if [[ "$@" == *"run"* ]]; then 
    echo "Starting container"
    sudo docker run -p 8888:8888 --gpus all -v ~/Code/Visionize/VisionCore/fruit_photos:/VisionCore/fruit_photos visioncore
fi
