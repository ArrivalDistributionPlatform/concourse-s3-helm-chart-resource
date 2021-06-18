FROM alpine/helm:3.2.4

RUN apk add --no-cache \
		bash \
		git \
		jq \
		aws-cli \
	&& apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community yq

RUN helm plugin install https://github.com/hypnoglow/helm-s3.git --version 0.10.0

COPY bin /opt/resource
