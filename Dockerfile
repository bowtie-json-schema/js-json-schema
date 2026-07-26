FROM node:26-alpine
COPY . /usr/app
WORKDIR /usr/app
ENV NODE_ENV=production
ARG IMPLEMENTATION_VERSION
RUN npm install --omit=dev ${IMPLEMENTATION_VERSION:+@cfworker/json-schema@$IMPLEMENTATION_VERSION}
CMD ["node", "bowtie_json_schema.js"]
