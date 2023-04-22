### BASE
# FROM node:18.16.0-alpine3.17
FROM node:18.16.0-slim as base-install-env

# Set the working directory
WORKDIR /app

RUN set -x && \
  apt-get update && \
  apt-get install -y \
  apt-transport-https \
  build-essential \
  make \
  python

RUN set -x && \
  yarn global add ts-node node-prune modclean --loglevel=warn && \
  yarn install --production --loglevel=warn && \
  node-prune && \
  modclean -r -n default:safe

RUN set -x && \
  yarn install --loglevel=warn

# overwrite this with 'CMD []' in a dependent Dockerfile
CMD ["/bin/bash"]
