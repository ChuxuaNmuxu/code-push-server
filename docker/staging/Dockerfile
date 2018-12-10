FROM node:8.14.0-slim

# install yarn and git
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN npm install -g code-push-cli

WORKDIR /staging

RUN yarn

RUN echo $NAME
RUN echo $VERSION
RUN echo $COMMIT

# 热更新
CMD ["node", "/staging/script/staging.js", "-n", "name", "-m", "commit", "-v", "1.8.8"]
