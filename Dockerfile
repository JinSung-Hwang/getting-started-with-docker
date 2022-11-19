# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production

# CMD는 도커 이미지가 컨테이너로 바뀌고 컨테이너 안에서 실행되는 명령어 (RUN과 동작은 같음)
CMD ["node", "src/index.js"]
EXPOSE 3000
