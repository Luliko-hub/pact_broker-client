FROM ruby:2.2.4

#RUN apk update \
#    && apk --no-cache add \
#      "build-base>=0.5" \
#      "bash>=4.4" \
#      "ca-certificates>=20190108" \
#      "git>=2.20" \
#      "postgresql-dev>=11.3" \
#      "sqlite-dev>=3.28" \
#      "sqlite>=3.28" \
#      "tzdata>=2019" \
#      "mariadb-dev>=10.3" \
#    && rm -rf /var/cache/apk/*

WORKDIR /app

COPY . ./

RUN gem install bundler -v '~>1.0' \
    && bundle install --jobs 3 --retry 3

CMD []
