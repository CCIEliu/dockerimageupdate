#!/bin/bash
echo 'Starting update all images on this host'
for image in $(docker images | awk 'NR!=1{print $1}')
do
echo -e "\n[Updating \033[34m$image\033[0m image.....]"
docker pull $image
echo -e "[Image \033[34m$image\033[0m updated]"
done
echo 'Finished update all images'