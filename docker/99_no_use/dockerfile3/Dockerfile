FROM node:carbon
EXPOSE 8080
COPY server.js .
CMD node server.js >log.out
ENTRYPOINT [ "node","server.js" ]
#ENTRYPOINT ["echo","hello" ]
