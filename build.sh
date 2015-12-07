DOCKER_IMAGE_NAME=mrobson/base-openjdk
DOCKER_IMAGE_VERSION=8

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
docker build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
