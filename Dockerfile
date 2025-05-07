FROM mysql:lts

ENV MYSQL_ROOT_PASSWORD=Phrase7-Deskbound8-Chill6-Grooving6-Pummel3

COPY ./init.sql /docker-entrypoint-initdb.d/

USER 1001

EXPOSE 3306

CMD ["mysqld"]

