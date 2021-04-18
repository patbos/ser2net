#!/bin/bash


echo "Running"

echo "${CONFIG}" > /etc/ser2net.conf


exec "$@"
