FROM node:8.14.0-slim

ENV SERVER = "server" \
    NAME = "课业" \
    VERSION = "1.0.0" \
    COMMIT = ""

# install yarn and git
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN npm install -g code-push-cli

WORKDIR /staging

RUN yarn

# 热更新
CMD node /staging/script/staging.js -s $SERVER -n $NAME -m $COMMIT -v $VERSION
