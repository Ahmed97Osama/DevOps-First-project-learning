FROM ruby:alpine
MAINTAINER devops_project <dev@ops.com>

RUN apk add --no-cache build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver
ENTRYPOINT [ "rspec" ]
