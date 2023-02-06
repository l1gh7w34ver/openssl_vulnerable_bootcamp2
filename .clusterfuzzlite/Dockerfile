FROM gcr.io/oss-fuzz-base/base-builder:v1
RUN apt-get update && apt-get install -y make autoconf automake libtool
COPY . $SRC/openssl_vulnerable_bootcamp2
WORKDIR $SRC/openssl_vulnerable_bootcamp2
RUN pwd
RUN ls -la
RUN cat $WORKDIR
COPY ./build.sh $SRC/
