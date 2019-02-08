FROM node:10.15-alpine

# This is match the running user's UID
ARG UID

WORKDIR /usr/src/app

# Make sure node modules is created before setting perms
RUN mkdir -p "node_modules"
RUN chown -R "${UID}:${UID}" .

CMD sh -c 'yarn && yarn start'
