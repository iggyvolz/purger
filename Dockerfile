FROM alpine:3.13.6
RUN apk add docker-cli
RUN echo docker system prune -af > /etc/periodic/15min/prune
CMD crond -f