FROM ubuntu:20.04

RUN apt update
RUN apt install -y ffmpeg

RUN mkdir /data
ENV PATH="/app/bin:${PATH}"

COPY ./ /app
WORKDIR /app

CMD ["watch_dir", "/data"]
