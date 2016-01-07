FROM gliderlabs/alpine:latest
RUN mkdir -p /var/cache/apk && ln -s  /var/cache/apk /etc/apk/cache \
   && apk cache sync &&  apk update && apk upgrade && apk cache clean &&  rm -rf /var/cache/apk/* \
   && apk add --no-cache unzip fish nano grep less elinks openssh  st mc byobu \
   && apk cache clean &&  rm -rf /var/cache/apk/* && apk del unzip && rm -rf /etc/ssl/certs* \
   && adduser -D -s /usr/bin/fish -h /home/nate nate

