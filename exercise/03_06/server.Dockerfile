FROM ubuntu

LABEL maintainer="Yuvvi "

USER root

COPY ./server.bash /

RUN apt -y update
RUN apt -y install curl bash
RUN chmod 755  /entrypoint.bash

USER nobody

ENTRYPOINT [ "/server.bash" ]
