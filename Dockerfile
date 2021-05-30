FROM ubuntu:latest

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y git maven default-jre mysql-server
COPY init.sh init.sh
RUN chmod +x init.sh && ./init.sh

COPY loop.sh loop.sh
RUN chmod +x loop.sh

ENTRYPOINT ["loop.sh"]
