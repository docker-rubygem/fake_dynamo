FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.5

RUN gem install fake_dynamo --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fake_dynamo"]
CMD ["--help"]
