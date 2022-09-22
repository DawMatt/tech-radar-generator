# Instructions from:
# https://www.npmjs.com/package/tech-radar-generator
# https://github.com/dprgarner/tech-radar-generator

# Note: radar.json in current folder is embedded in the image

export version=`git rev-parse HEAD`
export COMMIT=${version:0:8}
export REPO=dawmatt/tech-radar-generator
export TAG=latest

docker build -f Dockerfile --tag $REPO:$TAG --tag $REPO:0.5.2 --tag $REPO:$COMMIT .
