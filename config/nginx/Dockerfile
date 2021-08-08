FROM nginx:1.21.1
LABEL MAINTAINER = "ahmadreza"

COPY nginx.conf  /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g" , "daemon off;"]
