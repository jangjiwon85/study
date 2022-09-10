FROM openjdk:8-jdk-alpine

RUN apk --no-cache add tzdata && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

WORKDIR /app
COPY test.war test.war
COPY entrypoint.sh run.sh
RUN chmod 774 run.sh

ENV PROFILE=local

#ENTRYPOINT ["run.sh"]
