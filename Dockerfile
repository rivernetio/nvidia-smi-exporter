FROM nvidia/cuda:8.0-runtime-ubuntu14.04
MAINTAINER Weina Ma <wma@teraproc.com>

COPY exporter.go /exporter.go
RUN apt-get update && apt-get install -y golang-go && go build /exporter.go && apt-get remove -y golang-go

EXPOSE 9102:9102

ENTRYPOINT ["/exporter"]
