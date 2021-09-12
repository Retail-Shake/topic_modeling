#!/bin/bash

echo "Starting server"

JVMARGS="-Xmx${HEAP_SIZE} -Xms${HEAP_SIZE}" ./app/dcs/dcs