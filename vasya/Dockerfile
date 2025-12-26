FROM node:18-alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache curl
EXPOSE 3000
CMD ["node", "server.js"]
