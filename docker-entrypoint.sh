#!/bin/sh -e

# Generating final main.tf file
if [ -f ./main.tf.m4 ]
then
    m4 ./main.tf.m4 > ./main.tf
fi

# Main
exec /bin/terraform "$@"
