#!/bin/sh

# démarre un container docker de l'app retail_shake
# veillez à rendre votre script executable avant de le lancer (chmod +x build.sh)
# veillez aussi à être dans répertoire docker/

# une fois démarrée, l'app est consultable sur http://localhost

green=`tput setaf 2`
red=`tput setaf 1`

if [ -z "$1" ]
then
    echo "${red}\nYou must pass the version numbner\n"
    exit 1
fi

TAG=$1

echo "Running version $TAG"

TAG=$TAG docker-compose -p topic_modeling up -d 