FROM node:21-alpine
RUN mkdir -p /var/data
WORKDIR /var/data
RUN apk add python3 g++ make && \
    npm install -g soul-cli && \ 
    apk del python3 g++ make
CMD ["soul" ,"-d", "sqlite.db", "-p", "8000"]