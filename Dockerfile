FROM node:16-alpine

# Create app directory
WORKDIR /mockbin

COPY package*.json ./
RUN npm ci --only=production
COPY . .

ENV MOCKBIN_REDIS "redis://default:root@D161764@redis-10303.c259.us-central1-2.gce.cloud.redislabs.com:10303"
EXPOSE 8080
CMD ["npm", "start"]
