FROM mysql
COPY . .

ENV MYSQL_ROOT_PASSWORD=123456

VOLUME [ "/var/lib/mysql" ]

RUN apt update
RUN apt-get install nodejs
RUN apt-get install npm

RUN npm i

RUN ./bin/db init --dbhost 127.0.0.1 --dbuser root --dbpassword 123456

RUN ["npm", "start"]
