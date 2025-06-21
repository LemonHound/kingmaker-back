FROM ubuntu:latest
LABEL authors="seiwe"

ENTRYPOINT ["top", "-b"]