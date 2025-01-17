#!/bin/bash

set -e

# go back to repository root
cd ..

# unset ROS_MASTER_URI to let the IUI know that
# it should launch its own ROS Master node
unset ROS_MASTER_URI

./shutdown.sh
./build.sh
./run.sh
./status.sh
# ./shutdown.sh

# # return to tests directory
# cd tests