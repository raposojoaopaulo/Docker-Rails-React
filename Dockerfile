FROM ruby:3


WORKDIR /app


ENV BUNDLE_PATH=/bundle/vendor


# Postgres client
RUN apt-get update -qq \
  && apt-get install -y nodejs npm \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash \
  && apt-get install -y nodejs 


RUN npm install -g yarn && \
    gem install bundler foreman


RUN gem install bundler


EXPOSE 3000


ENTRYPOINT ["bash", "docker-entrypoint.sh"]


CMD "foreman start -f Procfile.dev"
