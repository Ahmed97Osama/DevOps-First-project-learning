FROM nginx:alpine
MAINTAINER devops_project <dev@ops.com>

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
