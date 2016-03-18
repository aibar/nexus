FROM iron/java:1.8

ADD nexus.tar.gz /

COPY nexus.vmoptions /nexus/bin

ENV RUN_AS_USER root

VOLUME /data

ENTRYPOINT ["/nexus/bin/nexus", "start"]
