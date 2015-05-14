FROM nginx

ENV WORKING_DIR=/opt/web-fixture

RUN apt-get update && apt-get install -y git-core && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/Hawkular-QE/web-fixture.git ${WORKING_DIR} && \
    cp ${WORKING_DIR}/conf/custom_http_code.conf /etc/nginx/conf.d/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
    




