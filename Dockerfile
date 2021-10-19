FROM python:3.9.2
LABEL maintainer="invasion441@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
VOLUME /app/app/models
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 8180/tcp