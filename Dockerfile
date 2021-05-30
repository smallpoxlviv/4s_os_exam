FROM ubuntu:latest

COPY loop.sh loop.sh
RUN chmod +x loop.sh

ENTRYPOINT ["./loop.sh"]
