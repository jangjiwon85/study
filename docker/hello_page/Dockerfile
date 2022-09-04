FROM openjdk:19-jdk-alpine3.16

RUN apk --no-cache add tzdata && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

WORKDIR /app
COPY hello.jar hello.jar
COPY entrypoint.sh run.sh
RUN chmod 774 run.sh

ENV PROFILE=local

ENTRYPOINT ["./run.sh"]
