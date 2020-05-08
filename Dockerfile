FROM openjdk:15-alpine
LABEL maintainer "Cole McKnight <cbmckni@clemson.edu>"

ENV FDT_VER=0.26.1

RUN apk update && apk add wget && rm -rf /var/cache/apk/*
RUN wget https://github.com/fast-data-transfer/fdt/releases/download/${FDT_VER}/fdt.jar
