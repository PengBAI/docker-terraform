#!/bin/sh -e

# Generating final main.tf file
m4 ./main.tf.m4 > main.tf

# Main
exec /bin/terraform "$@"
