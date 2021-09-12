#!/bin/sh

# construit une image docker de l'app retail_shake
# veillez à rendre votre script executable avant de le lancer (chmod +x build.sh)
# veillez aussi à être dans répertoire docker/

# vous devez reconstruire l'image lorsque vous modifiez le Dockerfile ou un fichier conf/*

green=`tput setaf 2`
red=`tput setaf 1`

if [ -z "$1" ]
then
    echo "${red}\nYou must pass the version numbner\n"
    exit 1
fi

TAG=$1

echo "Building version $TAG"

docker build -t retail_shake/topic_modeling:$TAG -f Dockerfile .