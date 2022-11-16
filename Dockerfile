FROM nginx:alpine
ARG GIT_REVISION

COPY index.html /usr/share/nginx/html/

RUN cd /usr/share/nginx/html/ && \
    echo $GIT_REVISION >> index.html