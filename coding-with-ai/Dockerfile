FROM ruby:3.1.2-alpine

WORKDIR /usr/src

COPY generate_faker_data.rb ./

RUN gem install faker titleize

CMD ["ruby", "generate_faker_data.rb"]