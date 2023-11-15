FROM mariadb:10.4.11

ADD my.cnf /etc/mysql/my.cnf
ADD init-user.sh /docker-entrypoint-initdb.d/init-user.sh

RUN apt-get update && \
    apt-get -y install tzdata openssh-client expect

RUN cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime && \
    echo "Asia/Taipei" > /etc/timezone

#RUN apt-get -y remove tzdata
RUN rm -rf /var/cache/apk/*

EXPOSE 3306