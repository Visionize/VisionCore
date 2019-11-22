#! /bin/sh
#
# run.sh
# Copyright (C) 2019 nishkrit <nishkrit@bionicdell>
#
# Distributed under terms of the MIT license.
#

#Build the latest docker image
if [ "$1" = "build" ]; then
    sudo docker build -t visioncore .
fi

#Start the docker container
if [ "$2" = "run" ]; then 
    sudo docker run -p 8888:8888 --gpus all -v ~/Code/Visionize/VisionCore/fruit_photos:/VisionCore/fruit_photos visioncore
fi
