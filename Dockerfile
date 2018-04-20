FROM ruby:2.5

RUN bundle config --global frozen 1

WORKDIR /opt/src

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3001

RUN chmod 600 /opt/src/app.rb && \
    whenever && \
    whenever --update-crontab

ENTRYPOINT ["./app.rb", "-p", "3001"]
