FROM node:12-alpine AS builder
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .

FROM node:12-alpine
WORKDIR /app
COPY --from=builder /app ./
EXPOSE 3000
CMD ["node", "index.js"]