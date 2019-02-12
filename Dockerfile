FROM alpine:latest
MAINTAINER Elliot Nicholas <elnic.service@gmail.com>

LABEL "com.github.actions.name"="Branch Replicator"
LABEL "com.github.actions.description"="Create exact same PR to another branch"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="green"

RUN	apk add --no-cache \
	bash \
	ca-certificates \
	curl \
	jq

COPY branch-replicator /usr/bin/branch-replicator

ENTRYPOINT ["branch-replicator"]
