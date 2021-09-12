# Dockerfile

FROM openjdk:11-jre-slim

RUN groupadd -r docker && useradd --no-log-init -r -g docker dockeruser

COPY --chown=dockeruser:docker ./carrot2-4.3.1 ./app 
COPY --chown=dockeruser:docker ./launch-dcs.sh ./app 

USER dockeruser

RUN ["chmod", "+x", "/app/dcs/dcs"]
RUN ["chmod", "+x", "/app/launch-dcs.sh"]


# startup 
CMD ["./app/launch-dcs.sh"]

