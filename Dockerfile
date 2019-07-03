# FROM circleci/node:latest-browsers

# WORKDIR /usr/src/app/
# USER root
# COPY package.json ./
# RUN yarn

# COPY ./ ./

# RUN npm run test:all

# CMD ["npm", "run", "build"]



FROM node:10.16

RUN apt-get update && \
    apt-get install -y nginx

WORKDIR /src

COPY . /src

RUN yarn install --ignore-engines

CMD /bin/bash ./run.sh