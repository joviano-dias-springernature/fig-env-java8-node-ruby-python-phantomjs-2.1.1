FROM te-docker.docker-registry.tools.springer-sbm.com/fig-env-java8-node-ruby-python

RUN apt-get update && apt-get install -y apt-utils libfontconfig1-dev libjpeg-dev
# Env

ENV PHANTOM_JS_VERSION 2.1.1-linux-x86_64

RUN apt-get update
RUN apt-get install -y curl bzip2 libfreetype6 libfontconfig

RUN curl -sSL https://cnpmjs.org/mirrors/phantomjs/phantomjs-$PHANTOM_JS_VERSION.tar.bz2 | tar xjC /
RUN ln -s /phantomjs-$PHANTOM_JS_VERSION/bin/phantomjs /usr/bin/phantomjs
