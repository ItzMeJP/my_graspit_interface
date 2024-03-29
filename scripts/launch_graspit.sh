#!/bin/bash
node_suffix=${1:-""}


if env | grep -q ^GRASPIT=
then
    echo "Using GRASPIT=" $GRASPIT
else
    export GRASPIT="/home/${USER}/.graspit"
    echo "Using GRASPIT=" $GRASPIT
fi

export GRASPIT_PLUGIN_DIR=$(dirname $(catkin_find --first-only libgraspit_interface.so))

graspit_simulator -p libgraspit_interface --node_name graspit
#$graspit_simulator -p libgraspit_interface --node_name ${node_name} __name:="${node_name}"

