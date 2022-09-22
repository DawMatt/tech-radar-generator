# Instructions from:
# https://www.npmjs.com/package/tech-radar-generator
# https://github.com/dprgarner/tech-radar-generator
#
# Assumes logged into Docker
# e.g. docker login -u $DOCKER_USER -p $DOCKER_PASS

export version=`git rev-parse HEAD`
export COMMIT=${version:0:8}
export REPO=dawmatt/tech-radar-generator
export TAG=latest

docker push $REPO --all-tags
