FROM node:20-alpine

WORKDIR /srv

COPY src .

RUN chmod +x setport.sh && \
    chmod +x START.sh

RUN ./setport.sh 80

EXPOSE 80
CMD [ "/srv/START.sh" ]