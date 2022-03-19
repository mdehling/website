FROM ruby:3.1.1

RUN apt-get update
RUN apt-get install -y --no-install-recommends nodejs

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
