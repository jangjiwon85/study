FROM tomcat:8.5-alpine

RUN apk --no-cache add tzdata && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN rm /usr/local/tomcat/conf/server.xml 
EXPOSE 8080
COPY server.xml /usr/local/tomcat/conf/ 

RUN rm -Rf /usr/local/tomcat/webapps/ROOT 
COPY ROOT.war /usr/local/tomcat/webapps/
ENV JAVA_OPTS="-Dserver.type=dev" 

COPY entrypoint.sh run.sh
RUN chmod 774 run.sh
ENTRYPOINT ["run.sh"]