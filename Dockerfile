# Dockerfile

FROM node:14-alpine as build

LABEL description="Generates a technology radar using the tech-radar-generator NPM \
    package. Use Docker command to mount the local directory at the /build location. \
    Radar data file should be called radar.json and using the generator's format."

WORKDIR /build
RUN yarn global add tech-radar-generator@0.5.2

CMD ["tech-radar-generator", "radar.json", "./dist"]
